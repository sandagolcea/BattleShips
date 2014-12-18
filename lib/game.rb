class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = [@player1,@player2].sample
  end

  def ask_for_ship_positions
    puts "#{current_player.name}"
    # for each ship, it asks the user for coords
    # tries to place it on the board, if it didn't place it
    # ask again for coordinates, until all the boats are placed
    
    @current_player.ships.each do |ship|
      puts "Place ship:"
      user_input = gets.chomp # B3  
      puts "Direction:"
      direction = gets.chomp  
      
      ship.set_coordinates(user_input,direction)

      # TODO: handle the case where the ship location is not valid
      # while not add ship, keep on asking.
      @current_player.defense_board.add_ship(ship) 
    end
    # swap players
  end

  def play
    # ask for ship positions for both users (2x)
    # unless game_over(to implement func GO on the board=aka ask board if GO)
    # if !GO ask users for hit location (receive_shot in board)
    # otherwise print winner
    # NEXT: implement an attack board; show the boards.
    # file with main method, that calls game, passes player 1 & player 2 
    # & asks for names & implem diff ships + init board to 0
  end


  private

  # TODO: please test this
  def game_over
    !player1.defense_board.any_floating_ships_left? || !player1.defense_board.any_floating_ships_left?
  end

  def swap_players
    @current_player == @player1 ? @current_player = player2 : @current_player = player1
  end
  

end


