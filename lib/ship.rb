class Ship

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

      x = start_point.split(//).first.ord - 'A'.ord
      if start_point.size == 2
        y = start_point.split(//).last.to_i 
      else # start_point.size >= 3 
        y = start_point.split(//).last(start_point.size-1).join.to_i
      end
      @direction == "vertical" ? x += i : y += i 
      @coordinates << [x,y-1]
      puts "I gave it: #{@direction}. Is it vertical? #{@direction == "vertical"}. Coordinates:"
      p @coordinates
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
