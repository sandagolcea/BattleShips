class Player

  attr_reader :name, :defense_board, :ships
  def initialize(name, defense_board, ships)
    @name = name
    @defense_board = defense_board
    @ships = ships
  end

end