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
    # NEXT: implement an attack board; show the boards.
    # file with main method, that calls game, passes player 1 & player 2 
    # & asks for names & implem diff ships + init board to 0
  end


  private

  def prompt_for_ship_positions
    puts "#{@current_player.name}"
    
    @current_player.ships.each do |ship|
      
      loop do
        print "Give ship start point: " ; user_input = gets.chomp # B3  
        print "Direction: " ; direction = gets.chomp  
        
        ship.set_coordinates(user_input,direction)
        
        break if (@current_player.defense_board.add_ship(ship))
      end

    end
  end

  def prompt_for_shoot
    puts "#{@current_player.name}"

    loop do  
      puts "\e[H\e[2J" # clears the screen
      puts "Where would you like to shoot? : "
      
      @current_player.defense_board.show.each {|line| p line}
      lucky_strike = gets.chomp

      break if @enemy_player.defense_board.handle_shot(lucky_strike)
    end

  end

  def game_over
    !@player1.defense_board.any_floating_ships_left? || !@player2.defense_board.any_floating_ships_left?
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


