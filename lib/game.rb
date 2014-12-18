class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = [@player1,@player2].sample
  end


  def play
    prompt_for_ship_positions
    swap_players
    prompt_for_ship_positions
    swap_players

    loop do
      prompt_for_shoot
      swap_players
      break if game_over
    end
  end


  private

  def print_nice_board(board)
    print "    " # adding some padding
    1.upto(board.size) { |i| print "#{i}  " }
    puts # some more padding
    current_letter = "A"
    
    board.each do |line| 
      p "#{current_letter} #{line}" 
      current_letter.next! 
    end

    puts # some more padding
  end

  def prompt_for_ship_positions
    puts "#{@current_player.name}"
    
    @current_player.ships.each do |ship|
      
      loop do
        print "Give ship start point: " ; user_input = gets.chomp # B3  
        print "Direction: " ; direction = gets.chomp  
        
        ship.set_coordinates(user_input,direction)
        
        break if (@current_player.board.add_ship(ship))
      end

    end
  end

  def prompt_for_shoot
    puts "\e[H\e[2J" # clears the screen
    puts "#{@current_player.name}'s board:"
    print_nice_board(@current_player.board.grid)

    loop do  
      puts "Where would you like to shoot?"
      puts "Attack board:"
      print_nice_board(@enemy_player.board.target_grid)
      
      lucky_strike = gets.chomp

      break if @enemy_player.board.handle_shot(lucky_strike)
    end

  end

  def game_over
    !@player1.board.any_floating_ships_left? || !@player2.board.any_floating_ships_left?
  end

  def swap_players
    if @current_player == @player1
      @current_player = @player2
      @enemy_player = @player1
    else
      @current_player = @player1
      @enemy_player = @player2
    end
  end
  

end


