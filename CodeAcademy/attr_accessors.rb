
class Person
  attr_reader :name
  attr_accessor :job
  attr_writer :age

  def initialize(name, job, age)
    @name = name
    @job = job
    @age = age
  end
end