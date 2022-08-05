class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    total = initial_value
    array.each do |x|
      if block_given?
        val = yield(x)
        total += val
      else
        total += x
      end
    end
    total
  end
end

my_array = MyArray.new([1, 2, 3])
#p my_array.sum(10)
p my_array.sum(0) {|n| n ** 2 }

short = ->(a, b) { a + b }
puts short.call(2, 3)

long = lambda { |a, b| a + b }
puts long.call(2, 3)