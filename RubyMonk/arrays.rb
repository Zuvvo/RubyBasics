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