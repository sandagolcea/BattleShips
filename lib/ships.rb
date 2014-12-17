class Ships

	def initialize(length)
		@length = length 
    #@initialized = false;
		@destroyed = false
		@coordinates = []
	end

	def destroyed?
    @destroyed
		# @initialized && @coordinates.count == 0 => not needing destroy anymore?
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
    #@initialized = true;
  end

  def take_hit(x,y)
    # true if boat.coordinates.includes?(x,y)
    # false if it can't hit it anymore aka already hit
    # remove the x,y from the coordinates collection 
    # (double check that this does not affect board)
  end

  def hit?(x,y)
    @coordinates.include?([x,y])
  end
  
end

# take_hit 