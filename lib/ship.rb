class Ship

  attr_reader :coordinates, :length
  SHIPS = {submarine: 3, battleship: 4, destroyer: 2}

	def initialize(length)
		@length = length 
    @initialized = false
		@coordinates = []
	end

  def self.method_missing name, *args
    return new SHIPS[name] if SHIPS[name]
    super
  end

	def sunk?
		@initialized && @coordinates.empty?
	end

  def set_coordinates(start_point, direction)

    @coordinates = []

    0.upto(@length-1) do |i| 

      x = start_point.split(//).first.ord - 'A'.ord
      y = start_point.split(//).last.to_i 
      direction == :vertical ? x += i : y += i 
      @coordinates << [x,y-1]
    end

    @initialized = true    
  end

  def take_hit(x,y)
    if @coordinates.include?([x,y])
      @coordinates.delete([x,y])
      return true # boat hit
    end
    false
  end
  
end
