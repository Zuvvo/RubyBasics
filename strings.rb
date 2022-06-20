print "What's your name?"
name = gets.chomp

puts "Capitalized: #{name.capitalize}"
puts "Upcase: #{name.upcase}"
puts "Downcase: #{name.downcase}"

puts name
name.upcase!
puts name