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
  def coordinates(*xy)
    # TODO: validate ship coordinates are ok
    @coordinates = xy
    # coordinates.each { |c| @coordinates << c}
  end
  

end