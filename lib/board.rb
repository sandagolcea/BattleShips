class Board
	
  DEFAULT_SIZE = 10
  # TODO: share constants with rspec
  BOAT = 3
  WATER = 0
  SHOT = 1

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

  def receive_shot(x,y)
    # TODO: validate x, y are between boundaries
      @matrix[x][y] = SHOT if is_valid?(x,y)

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
      @matrix[cell[0]][cell[1]] = BOAT
    end

    # 4. add it to the collection of ships
    @ships << ship
  end

  def ships
    @ships
  end

	# board.placed?(self)
	def placed?(boat_thing)
		# this is going to check if the coordinates given belong to a ship
	end

  private

  def is_valid?(x,y)
    return x >= 0 && y >= 0 && x <= @size && y <= @size
  end

  def is_taken?(x,y)
    @matrix[x][y] != WATER
  end

end

# board = Board.new