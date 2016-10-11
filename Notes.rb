puts "Hi. Let's play guess a number."
puts "I'll pick a number between 1 and 1000."
puts "And I'll tell you if you're high or low."
puts "Ready to go?"

gets

new_game = "y"

while new_game == "y"
  computer = rand(1..1000)
  player_guess = 0
  until player_guess == computer
    puts "What's your guess?"
    player_guess = gets.chomp.to_i
    if computer > player_guess
      puts "You're too low."
    elsif computer < player_guess
      puts "You're Willie Nelson."
    else
      puts "You got it!\n\nMy number was #{computer}."
    end
  end
  puts "Would you like to play again? (Press y for yes)"
  new_game = gets.chomp.downcase
end

puts "Thanks for playing!"
# ****************************************
#new notes

class ComputerGuessing

  attr_accessor :tries, :floor, :ceiling

  def initialize
    self.tries = 0
  end

  def play
    reset_range
    puts "Pick a number between 1 and 1000."
    puts "I'll guess a number and you tell me if it's high or low."
    puts "Have a number? P[press any key]"
    gets
    guess
  end

  def reset_range
    self.floor = 0
    self.ceiling = 1000
  end

  def middle_of_range
    possibles[possibles.length/2]
  end

  def possibles
    (floor..ceiling).to_a
  end

  def bullshit?(response)
    (possibles.length == 1) && %w(h l).include?(response)
  end

  def guess
    this_guess = middle_of_range
    puts "My guess is #{this_guess}"
    puts "Am I high (h), low (l) or just right (y)?"
    response = gets.chomp.downcase
    if bullshit?(response)
      puts "You're full of crap."
      puts "It can only be #{middle_of_range}."
      puts "Starting over, asshole."
      reset_range
      guess
    end
    if response == "h"
      self.ceiling = this_guess
      guess
    elsif response == "l"
      self.floor = this_guess
      guess
    elsif response == "y"
      puts "I got it! Yay!"
      puts "Would you like to play again (y)?"
      play_again = gets.chomp.downcase
      if play_again == "y"
        play
      else
        exit
      end
    else
      puts "Does not compute"
      guess
    end
  end


end

ComputerGuessing.new.play
