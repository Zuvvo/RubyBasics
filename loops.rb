i = 20
loop do
  i -= 1
  puts "#{i}"
  break if i <= 0
end

puts "Printing from 1 to 5 excluding number that can be devided by 2"

for i in 1..5
  next if i % 2 == 0
  puts i
end

odds = [1,3,5,7,9]
odds.each do |x|
  print x*2
end

5.times { print 2 }

i = 1
while i <= 50 do
  print i
  i += 1
end

i = 1
until i > 50 do
  print i
  i += 1
end

"B".upto("F"){|c| puts c}

1..3.times {|i|puts "iteration #{i}"}