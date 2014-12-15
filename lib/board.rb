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
end

# board = Board.new