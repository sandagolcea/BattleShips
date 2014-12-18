require_relative 'translate_coordinates'

class Ship

  include TranslateCoordinates
  attr_reader :coordinates, :length
  SHIPS = {battleship: 4, submarine: 3, destroyer: 2}

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
    @direction = direction
    @coordinates = []

    0.upto(@length-1) do |i| 

      coord = translate_coordinates(start_point)
      x = coord.first
      y = coord.last
      @direction == "vertical" ? x += i : y += i 
      @coordinates << [x,y]
      
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
