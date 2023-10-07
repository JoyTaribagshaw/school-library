require_relative 'person'

# class for teacher
class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, name = 'unknown')
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

teacher = Teacher.new('Mr. Lucky', 35, true, 'Mathematics')
puts "Teacher ID: #{teacher.id}"
puts "Name: #{teacher.name}"
puts "Age: #{teacher.age}"
puts "Specialization: #{teacher.specialization}"
puts "Can use services? #{teacher.can_use_services?}"
