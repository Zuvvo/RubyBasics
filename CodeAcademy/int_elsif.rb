user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end

unless user_num >= 10
  puts "You picked number less than 10"
end

puts "Less than zero" if user_num < 0

favorite_book = nil
favorite_book ||= "Harry Potter"
puts favorite_book
favorite_book ||= "Will not change"
puts favorite_book