class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def increase_age(num)
    @age += num
  end
end

bob = Person.new("bob", 46)
puts bob.name
puts bob.age
bob.increase_age(5)
puts bob.age

jill = Person.new("Jill", 34)