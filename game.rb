class Game
  attr_accessor :player_1, :player_2, :current_player, :next_player, :game_over

  def initialize
    puts "New Game Started"
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
    @current_player = player_1
    @next_player = player_2
    @game_over = false
  end

  def swtich_player 
    self.next_player = @current_player
    self.current_player = current_player == player_1 ? player_2 : player_1
  end

  def display_score
    puts "P1: #{player_1.lives}/3 vs. P2: #{player_2.lives}/3"
  end

  def check_game_over
    if current_player.lives == 0
      puts "#{next_player.name} wins with a score of #{next_player.lives}/3"
      puts "------ GAME OVER ------"
      puts "Good bye!"
      self.game_over = true
    else
      puts "----- NEW TURN -----"
      swtich_player
    end
  end

  def start_game
   while game_over == false
    new_question = Question.new
    puts "#{current_player.name}: #{new_question.ask_question}"
    print "> "
    
    if new_question.check_answer(gets.chomp().to_i)
      puts "Good job!"
    else
      puts "NO! Better luck next time."
      current_player.lose_live
    end

    display_score
    check_game_over
   end
  end
end