def find_numbers(arr)
  changes = 6

  arr.each_with_index do |num, i|
    digits = num.to_s.chars.map(&:to_i)
    digits.each_with_index do |digit, index|
      until digit == 9 || (num.digits.inject(:+) % 3).zero?
        digit += 1
        changes -= 1
        digits[index] = digit
        num = digits.join.to_i
        arr[i] = num
      end
    end
  end

  while changes >= 3
    number = arr.max_by { |x| max_increase_of_number(x, 3) }
    arr[arr.find_index(number)] = number + max_increase_of_number(number, 3)
    changes -= 3
  end

  arr
end

def max_increase_of_number(number, changes)
  result = []
  digits = number.digits.reverse!
  digits.each do |x|
    min = [9 - x, changes].min
    changes -= min
    result << min
  end
  changes.positive? ? 0 : result.join.to_i
end

def is_number_divisible_by_3?(number)
  number % 3.zero?
end

def random_arr
  arr = []
  3.times do
    arr << rand(0...10_000)
  end
  arr
end


#find_numbers(random_arr)

def test
  1000.times do
    check(find_numbers(random_arr))
  end
end

def check(arr)
  puts "arr: #{arr}"
  arr.each do |num|
    puts "ERROR!!! #{arr}" unless is_number_divisible_by_3?(num)
  end
end

test