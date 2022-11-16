class Dog
  attr_accessor :name, :color, :age

  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end

  # instance method, change depending on the instance
  def info
    puts "#{name} is #{age} years old and is #{color}."
  end

  #class method, not change, all of the class as a whole
  def self.bark
    puts "Woof!"
  end
end

chato = Dog.new("chato", "black", 1)
chato.info
chispa = Dog.new("chispa", "white and brown", 7)
chispa.info

Dog.bark