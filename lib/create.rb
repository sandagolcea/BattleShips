
def matrix_constructor(n)
	@matrix = []
  0.upto(n) do 
    row = []
    0.upto(n) do
      row << 0
    end
  @matrix << row
  end
  @matrix
end

matrix_constructor(5)

def show_matrix
  @matrix.each {|line| p line}
end

# show_matrix

def attack(coord)
  x = coord.split(//).first.ord - 'A'.ord
  y = coord.split(//).last.to_i - 1 if y != 0 
  # p x, y
end

attack("A2")

def hit(x,y)
  @matrix[x][y] = 1
end

hit(1,3)
hit(3,3)
hit(2,4)
show_matrix

def place_ship()

end
