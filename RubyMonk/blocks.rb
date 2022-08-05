def calculation(a, b)
  yield(a, b)
end

addition = lambda {|x, y| x + y}
puts calculation(5, 5, &addition)


Filter = lambda do |array, &block|
  array.select(&block)
end

puts Filter.call([1, 2, 3, 4]) {|number| number.even? }

#Proc.new is something that’s hardly ever used to explicitly create blocks because of these surprising return semantics.
# It is recommended that you avoid using this form unless absolutely necessary.