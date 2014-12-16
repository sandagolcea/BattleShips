class Board
	
  DEFAULT_SIZE = 10
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
        row << 0
      end
      @matrix << row
    end
  end

  def receive_shot(x,y)
    # TODO: validate x, y are between boundaries
      @matrix[x][y] = 1
  end

  def show
    @matrix
  end

  def add_ship(ship)
    # 1. validate ship coordinates are between boundaries
    # 2. valid ship coord are not occupied by other ships
    # 3. mark matrix coordinates
    # 4. add it to the collection of ships
    # list of ships
    @ships << ship
    # ships on board
    ary = ship.coordinates
    ary.each do |cell| 
      @matrix[cell[0]][cell[1]] = 3
    end
    # put B for boat instead of 3, or whatever
  end

  def ships
    @ships
  end

	# board.placed?(self)
	def placed?(boat_thing)
		# this is going to check if the coordinates given belong to a ship
	end


end

# board = Board.new