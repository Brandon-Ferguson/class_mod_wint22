class Mammal
  # read and write
  attr_accessor :name, :age, :color
  # attr_reader :name, :age, :color
  # attr_writer :name, :age, :color

  def initialize(name, age, color)
    @name = name
    @age = age
    @color = color
  end

  def breathe
    puts "Inhale... Exhale..."
  end

  def speak
    raise "You have to override this method."
  end
end

class Cat < Mammal
  def initialize(name, age, color)
    super(name, age, color)
  end

  def speak
    puts "Meow!"
  end
end

harvey = Cat.new("Harvey", 3, "orange")
twyla = Cat.new("Twyla", 12, "grey")

harvey.speak
twyla.speak
harvey.breathe
twyla.breathe