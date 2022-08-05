puts 1.class
puts "".class
puts [].class

puts 1.is_a?(Integer)
puts 1.is_a?(String)

p Integer.class

Object.new

class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    (299*@r + 587*@g + 114*@b) / 1000
  end

  def brightness_difference(another_color)
    (another_color.brightness_index - brightness_index).abs
  end

  def hue_difference(another_color)
    (@r - another_color.r).abs + (@g - another_color.g).abs + (@b - another_color.b).abs
  end

  def enough_contrast?(another_color)
    brightness_difference(another_color) > 125 && hue_difference(another_color) > 500
  end
end


class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    total = 0
    orders.each do |order|
      order.each do |product|
        price = @menu[product[0]]
        amount = product[1]
        total += price * amount
      end
    end
    total
  end

  def cost_monk_solution(*orders)
    orders.inject(0) do |total_cost, order|
      total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] }
    end
  end
end

restaurant = Restaurant.new({:rice => 3, :noodles => 2})
puts restaurant.cost({:rice => 1, :noodles => 1})
