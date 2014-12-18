  

class Ship
  attr_reader :length

  def initialize
    @length = 4
  end

  def place_ship(start_point,direction)
    @coordinates = []
    @direction = direction

    0.upto(@length-1) do |i|
      x = start_point.split(//).first.ord - 'A'.ord
      y = start_point.split(//).last.to_i
      @direction == :vertical ? x += i : y += i 
      @coordinates << [x,y-1]
    end
    @coordinates
  end

end


ship = Ship.new

p ship.place_ship("B1",:vertical)
p ship.place_ship("C1",:horizontal)
