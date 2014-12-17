class Board
	
  DEFAULT_SIZE = 10
  # TODO: share constants with rspec
  WATER = 0
  BOAT = 1
  MISS = 2
  HIT = 3
  KILL = 4

  attr_reader :size

	def initialize(options = {})
    @size = options.fetch(:size,DEFAULT_SIZE)
    @ships = []
    create(@size)
	end

  def create(size)
    @matrix = []

    0.upto(size) do 
      row = []
      0.upto(size) do
        row << WATER
      end
      @matrix << row
    end
  end

  def receive_shot(x,y)

    if is_valid?(x,y) && !is_shot?(x,y)
      @matrix[x][y] == BOAT ? @matrix[x][y] = HIT : @matrix[x][y] = MISS
    else 
      false  
    end
      # @matrix[x][y] = MISS if is_valid?(x,y)
      # 1. check coordinates are valid
      # 2. return false is it was already shot 
      # 3. if it hits a ship -  
      # 3.1. check if the ship destroyed => paint it in the board KILL
      # 3.2. if not yet destroyed, mark as HIT
      # 4. otherwise is MISS
  end

  def show
    @matrix
  end

  def add_ship(ship)

    # 1. validate ship coordinates are between boundaries
    # 2. valid ship coord are not occupied by other ships
    ship.coordinates.each {|c| return false if !is_valid?(c.first,c.last) || is_taken?(c.first,c.last)}

    # 3. mark matrix coordinates
    ship.coordinates.each do |cell| 
      @matrix[cell.first][cell.last] = BOAT
    end

    # 4. add it to the collection of ships
    @ships << ship
  end

  def ships
    @ships
  end

  private

  def is_shot?(x,y)
    @matrix[x][y] != BOAT && @matrix[x][y] != WATER 
  end

  def is_valid?(x,y)
    return x >= 0 && y >= 0 && x <= @size && y <= @size
  end

  def is_taken?(x,y)
    @matrix[x][y] != WATER
  end

end
