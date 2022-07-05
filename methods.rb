def combined_comparision(x, y)
  return x <=> y
end

def sort_fruits(fruits)
  fruits.sort! do |first, second|
    first <=> second
  end
  fruits.reverse!
  return fruits
end

fruits = sort_fruits(["orange", "apple", "banana", "pear", "grapes"])
fruits.each { |el| puts el }

number_1 = gets.chomp.to_i
number_2 = gets.chomp.to_i

puts number_1.is_a? Integer
puts number_1

if (number_1.is_a? Integer) && (number_2.is_a? Integer)
  puts "combined comparision: " + combined_comparision(number_1, number_2).to_s
end

x = 15
puts x.respond_to?(:next)