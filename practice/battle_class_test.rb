class Player

  def initialize(name)
    @name =  name
  end

  def place_ship(start_point,direction)
  @ary = []

    0.upto(Ship.new.length-1) do |indentation|
      x = start_point.split(//).first.ord - 'A'.ord
      y = start_point.split(//).last.to_i + indentation
      @ary << [x,y-1]
    end
  end
  
  def show_coord
    @ary 
  end

end

class Ship
  attr_reader :length
  def initialize
    @length = 4
  end

end

player = Player.new("Sanda")
ship = Ship.new

player.place_ship("B1",:vertical)
p player.show_coord