class Board
	DEFAULT_SIZE = 10

	def initialize(options = {})
		self.size = options.fetch(:capacity,DEFAULT_SIZE)
    @ships = []
	end

	def size
		@size ||= DEFAULT_SIZE
	end
		
	def size=(value)
		@size = value
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

    @matrix
  end

  def receive_shot(x,y)
      @matrix[x][y] = 1
  end

  def show
    @matrix
  end

  def add_ship(ship)
    # list of ships
    @ships << ship
    # ships on board
    # ary = ship.coordinates
    # ary.each do |cell| 
    #   x = cell[0]
    #   p x
    #   y = cell[1]
    #   p y
    #   receive_shot(x,y)
    # end
    # put B for boat instead of 3, or whatever
  end

  def ships
    @ships
  end

	# board.placed?(self)
	def placed?(boat_thing)
		# this is going to check if the coordinates given are in fact
    # all your base are belong to us. Ship, I meant ship!
	end


end

# board = Board.new