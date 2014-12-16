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

  # shouldn't these be the player's resp?
  def ship_coordinates(*coordinates)
    @coordinates = coordinates
    # coordinates.each { |c| @coordinates << c}
  end
  

end