class Agegame
  attr_accessor :person

  def initialize(person)
    @person = person
    @user_bet = 0
    main_menu
  end

  def main_menu
    puts "Hello #{person.name}."
    puts "Welcome to our game!"
    puts "If you win you get younger. If you lose you get older."
    puts "How much you want to bet in years?"
    puts "Put 0 to quit"

    @user_bet = gets.strip.to_i

    if @user_bet == 0
      puts "Goodbye!"
      exit
    else
      run_age_game
    end
  end

  def run_age_game
    puts "I am thinking of a number from 1-10"
    num_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    #num_arr = random(1, 11)
    answer = num_arr.sample

    puts "What is your guess?"
    user_guess = gets.strip.to_i

    if user_guess > 0 && user_guess < 11
      if user_guess == answer
        @person.increase_age(-(@user_bet))
        puts "You won! Your new age is: #{@person.age}"
        puts "The answer was #{answer}"
        main_menu
      else
        @person.increase_age(@user_bet)
        puts "You lost! Your new age is: #{@person.age}"
        puts "The answer was #{answer}"
        main_menu
      end
    else
      puts "Invalid Guess. Try again 1-10. "
      run_age_game
    end
  end
end