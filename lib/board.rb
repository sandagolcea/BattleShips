class Board
	
  DEFAULT_SIZE = 10
  # require 'constants'
  WATER = 0
  BOAT = 1
  MISS = 2
  HIT = 3
  KILL = 4

  attr_reader :size

	def initialize(options = {})
    @size = options.fetch(:size,DEFAULT_SIZE)
    @ships = []
    create(@size)
	end

  def create(size)
    @matrix = []

    0.upto(size) do 
      row = []
      0.upto(size) do
        row << WATER
      end
      @matrix << row
    end
  end

  def handle_shot(x,y)

    if is_valid?(x,y) && !is_shot?(x,y)
      hit = ships.any? {|ship| ship.take_hit(x,y)}
      hit ? @matrix[x][y] = HIT : @matrix[x][y] = MISS
    else 
      false  
    end
  end

  def show
    @matrix
  end

  def add_ship(ship)

    # 1. validate ship coordinates are between boundaries
    # 2. valid ship coord are not occupied by other ships
    ship.coordinates.each {|c| return false if !is_valid?(c.first,c.last) || is_taken?(c.first,c.last)}

    # 3. mark matrix coordinates
    ship.coordinates.each do |cell| 
      @matrix[cell.first][cell.last] = BOAT
    end

    # 4. add it to the collection of ships
    @ships << ship
  end

  def empty?
    @matrix.all? {|column| column.all? {|cell| cell == WATER} }
  end

  def ships
    @ships
  end

  def any_floating_ships_left?
    @ships.any? {|ship| !ship.sunk }
  end

  private

  def is_shot?(x,y)
    @matrix[x][y] != BOAT && @matrix[x][y] != WATER 
  end

  def is_valid?(x,y)
    return x >= 0 && y >= 0 && x <= @size && y <= @size
  end

  def is_taken?(x,y)
    @matrix[x][y] != WATER
  end

end
