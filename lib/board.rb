class Board
	DEFAULT_SIZE = 10

	def initialize(options = {})
		self.size = options.fetch(:capacity,DEFAULT_SIZE)
	end

	def size
		@size ||= DEFAULT_SIZE
	end
		
	def size=(value)
		@size = value
	end

	def has_ships #(?)
	end

	# board.placed?(self)
	def placed?(boat_thing)
		# this is going to check if the coordinates given are in fact
    # all your base are belong to us. Ship, I meant ship!
	end


end

# board = Board.new