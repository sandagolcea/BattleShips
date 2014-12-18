class Player

  attr_reader :name

  def initialize(name, defense_board, ships)
    @name = name
    @defense_board = defense_board
    @ships = ships
  end

end