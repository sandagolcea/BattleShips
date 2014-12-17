class Ships

  attr_reader :coordinates, :length

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

  # TODO: should convert to real coordinates
  def set_coordinates(start_point, direction)
    # TODO: validate ship coordinates are ok

    @coordinates = []

    0.upto(@ship_length) do |i| 
      
      x = start_point.split(//).first.ord - 'A'.ord
      y = start_point.split(//).last.to_i + i
      @coordinates << [x,y-1]
    end

    @initialized = true    
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