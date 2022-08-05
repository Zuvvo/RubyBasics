[1, 2, 3, 4, 5] << "woot"
[1, 2, 3, 4, 5][-1]
[1, 2, 3, 4, 5].push("woot")
[1,3,5,4,6,7].delete(5)
[1,2,3,4,5,6,7,8,9].delete_if {|i| i.even?}

def array_copy(source)
  destination = []
  source.each {|i| destination.push(i) if i < 4}
  return destination
end

def length_finder(input_array)
  arr = []
  input_array.each {|i| arr << i.length}
  return arr
end

def length_finder_solution(input_array)
  input_array.map {|element| element.length}
end

puts length_finder(['Ruby','Rails','C42'])

def non_duplicated_values(values)
  arr = []
  values.each do |i|
    same_numbers_arr = values.select { |x| x == i}
    arr << i if same_numbers_arr.length == 1
  end
  return arr
end

def non_duplicated_values_solution(values)
  values.find_all { |x| values.count(x) == 1 }
end

print non_duplicated_values([1,2,2,3,3,4,5])
print non_duplicated_values_solution([1,2,2,3,3,4,5])


def random_select(array, n)
  arr = []
  n.times do arr << array[rand(array.length)] end
  return arr
end

print random_select([1, 2, 3, 4, 5], 3)

def kaprekar?(k)
  string_number = (k ** 2).to_s
  left_numbers = string_number.length.even? ? (string_number.length / 2) : (string_number.length / 2).to_i
  return string_number[0, left_numbers].to_i + string_number[left_numbers, string_number.length].to_i == k
end

def kaprekar_monk_solution?(k)
  no_of_digits = k.to_s.size
  square = (k ** 2).to_s

  second_half = square[-no_of_digits..-1]
  first_half = square.size.even? ? square[0..no_of_digits-1] : square[0..no_of_digits-2]

  k == first_half.to_i + second_half.to_i
end

kaprekar_number = 297
puts "Kaprekar number #{kaprekar_number}: #{kaprekar?(kaprekar_number)}"

def sum_of_cubes(a, b)
  result = 0
  for i in a..b
    result = result + i * i * i
  end
  result
end

def sum_of_cubes_solution(a, b)
  (a..b).inject(0) { |sum, x| sum += (x*x*x) }
end

puts sum_of_cubes_solution(3,5)

def array_of_fixnums?(array)
  array.all?{|el| el.is_a? Fixnum}
end

puts array_of_fixnums?([2,3, "xxc"])

5.abs