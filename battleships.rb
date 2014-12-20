require './lib/game.rb'
require './lib/player.rb'
require './lib/ship.rb'
require './lib/board.rb'
# require './lib/translate_coordinates.rb'
# file with main method, that calls game, passes player 1 & player 2 
# & asks for names & implem diff ships + init board to 0

def create_default_ships
  [Ship.submarine, Ship.battleship, Ship.destroyer]
end

player1 = Player.new("Player1",Board.new,create_default_ships)
player2 = Player.new("Player2",Board.new,create_default_ships)

game = Game.new(player1,player2)
game.play
