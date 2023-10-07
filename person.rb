class Person
  attr_reader :id, :name, :age

  def initialize(name = "Unknown", age = 0, parent_permission = true)
    @id = generate_id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def name=(new_name)
    @name = new_name
  end

  def age=(new_age)
    @age = new_age
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end

  def generate_id
    rand(1..1000)
  end
end

# Example usage:
person = Person.new("John Doe", 25)
puts "Person ID: #{person.id}"
puts "Name: #{person.name}"
puts "Age: #{person.age}"
puts "Can use services? #{person.can_use_services?}"
