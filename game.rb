class Game
  attr_accessor :player_1, :player_2, :current_player, :game_over

  def initialize
    puts "New Game Started"
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
    @current_player = player_1
    @game_over = false
  end

  def swtich_player 
    self.current_player = current_player == player_1 ? player_2 : player_1
  end

  def start_game
   while game_over == false
    puts "#{current_player.name}"
    # self.game_over = true
   end

   puts 'finish loops'
  end

  # function for displaying score
  
  # function to check game over (either one player lives is 0)
  
  # function for swtiching players
end