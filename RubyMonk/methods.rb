next_method_object = 1.method("next")
puts next_method_object.class
puts next_method_object.call

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

puts add(1, 2, 3)

def introduction(age, gender, *names)
  full_name = ""
  names.each{|x| full_name << "#{x} "}
  full_name.rstrip!
  "Meet #{full_name}, who's #{age} and #{gender}"
end

def introduction_join_solution(age, gender, *names)
  "Meet #{names.join(' ')}, who's #{age} and #{gender}"
end

puts introduction(45, "Male", "Matt", "Arnold", "Damon")


def add(a_number, another_number, options = {})
  sum = a_number + another_number
  sum = sum.abs if options[:absolute]
  sum = sum.round(options[:precision]) if options[:round]
  sum
end

puts add(1.0134, -5.568)
puts add(1.0134, -5.568, absolute: true)
puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)

def calculate(*numbers)
  if numbers[-1].is_a?(Hash)
    hash = numbers[-1]
    numbers.pop()
    return add(*numbers) if hash[:add]
    return subtract(*numbers) if hash[:subtract]
  end
  add(*numbers)
end

def add(*numbers)
  numbers.inject(){|x, y| x + y}
end

def subtract(*numbers)
  numbers.inject(){|x, y| x - y}
end

puts "Calculate: -10, 2, 3 add: true -> #{calculate(-10, 2, 3, add: true)}"

def exec_time(proc)
  time = Time.now
  proc.call
  Time.now - time
end