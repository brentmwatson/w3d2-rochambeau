class Game
  attr_accessor :player_one_choice, :computer

  def play
    promp_player
    player_choice
    computer_choice
    ramdom_pick
    choose_winner
    declare_winner
    ask_for_rematch
  end

  def promp_player
    puts "Lets play rock, paper, scissors."
    puts "Pick a selection:"
    puts "Rock or Paper or Scissors"
    puts "-------------------------------"
    gets player_one_choice
  end

  def player_choice
    # validate the player_choice
      # for playerOneChoice
        %w(rock paper scissors) == ["rock", "paper", "scissors"]
  end

  def computer_choice
    # call random_pick
  end

  def ramdom_pick
    # selection = %w(rock paper scissors).sample
  end

  def choose_winner
    #comparitive loop

    # Rock beats scissors
    # Paper beats Rock
    # Scissors beats Paper

  end

  def declare_winner
    # "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"

  end

  def ask_for_rematch

  end

end

game = Game.new
game.play
