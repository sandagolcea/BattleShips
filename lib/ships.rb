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

  # TODO: should convert to real coordinates
  def coordinates(*xy) 
    # TODO: validate ship coordinates are ok
    @coordinates = xy
  end

  def take_hit(x,y)
    
  end

  def hit?(x,y)
    @coordinates.include?([x,y])
  end
  
end