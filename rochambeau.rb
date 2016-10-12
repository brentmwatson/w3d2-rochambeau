class Game
  attr_accessor :player_one_choice, :computer

  def play
    promp_player
    # player_choice
    computer_choice
    # ramdom_pick
    # choose_winner
    # declare_winner
    # ask_for_rematch
  end

  def promp_player
    puts "Lets play rock, paper, scissors."
    puts "Pick a selection:"
    puts "Rock or Paper or Scissors"
    puts "-------------------------------"
    self.player_one_choice = gets.chomp.downcase
  end



  # def player_choice
  #   # validate the player_choice
  #
  #   if player_one_choice != rock || paper || scissors
  #     for playerOneChoice do |x|
  #       x.%w(rock paper scissors) == ["rock", "paper", "scissors"]
  #
  #   else puts "Do you understand how this game works?"
  #         puts"Please choose one: Rock Paper or Scissor"
  # end
  #
  def computer_choice
    random_pick
  end

  def random_pick
    self.computer = %w(rock paper scissors).sample
  end
  #
  def choose_winner

    case
      when
        ["rock", "scissors"]
        ["paper", "rock"]
        ["scissors", "paper"]
        puts "player wins"
      when
        ["rock", "rock"]
        ["paper", "paper"]
        ["scissors", "scissors"]
        puts "you draw"

  end
  #
  # def declare_winner
  #   puts "Player: "(player_one_choice.upcase " vs " Computer: "(choose_winner.upcase
  #   puts "choose_winner"
  #
  # end
  #
  # def ask_for_rematch
  #
  # end

end

game = Game.new
game.play
