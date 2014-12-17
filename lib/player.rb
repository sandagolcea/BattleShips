class Player

  def initialize(name)
    @name = name
    @ships = []
  end


  def place_ship(start_point, direction)
    
    @ary = []
    # TODO: get actual ship length
    @ship_length = 4

    0.upto(@ship_length) do |indentation|
      x = start_point.split(//).first.ord - 'A'.ord
      y = start_point.split(//).last.to_i + indentation
      @ary << [x,y-1]
    end

  end

end