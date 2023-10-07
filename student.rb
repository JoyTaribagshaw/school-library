class Student < Person
  def initialize(name = "Unknown", age = 0, parent_permission = true, classroom)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\\(ツ)/¯"
  end
end

student = Student.new("Alice", 16, true, "Physics")
puts "Student ID: #{student.id}"
puts "Name: #{student.name}"
puts "Age: #{student.age}"
puts "Classroom: #{student.classroom}"
puts "Can use services? #{student.can_use_services?}"
puts "Playing hooky: #{student.play_hooky}"
