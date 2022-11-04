students = ['Mat', 'Hat', 'Gat', 'Stephan', 'Mat']

#students.each {|student| puts student}

#for i in 0..students.length-1 do
#  puts students[i]
#end

def my_each(arr, &block) #pass block and call
  arr.each { |x| block.call(x) }
end

def my_each2(arr) #no need to pass block
  arr.each do |x|
    yield x
  end
end

simple_proc_print = Proc.new do |el|
  puts el
end

proc_print = Proc.new do |el|
  puts el
  return #exiting main function
end

lambda_print = lambda do |el|
  puts el
  return #not exiting
end

#my_each(students, &print_everything)

#students.each(&proc_print)
my_each2(students, &simple_proc_print)