class Ships

	def initialize(length)
		@length = length 
		@destroyed = false
		@coordinates = []
	end

	def destroyed?
		@destroyed
	end
	
	def destroy!
		@destroyed = true
	end

	def length
		@length
	end

	def place_ship(*coordinates)
		@coordinates = coordinates
		# coordinates.each { |c| @coordinates << c}
	end
	# def place_ship(start_point,length,direction)
	# end
	
	def ship_in_place?
		return true if board.placed?(self)
		false
	end
end