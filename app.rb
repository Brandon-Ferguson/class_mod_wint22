require_relative 'person'
require_relative 'age_game'

class App
  attr_accessor :person

  def initialize
    @person = init_person
  end

  def init_person
    puts "Enter your name: "
    name = gets.strip
    puts "Enter your age: "
    age = gets.strip.to_i

    if age >= 21
      @person = Person.new(name, age)
      Agegame.new(@person)
    else
      puts "You shall not pass!"
      exit
    end
  end
end

app = App.new