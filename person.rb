# class for person
class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age?
    return true if @age >= 18

    false
  end

  def is_person_of_age?
    of_age?
  end  

  def can_use_services?
    return true if @age >= 18 || @parent_permission

    false
  end
end

person1 = Person.new(34, 'Joy')
puts person1.name
puts person1.name = 'Peter'
puts person1.is_person_of_age?
puts person1.can_use_services?

