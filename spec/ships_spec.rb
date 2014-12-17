require 'ships'

describe Ships do
  let(:ship){Ships.new(3)}
  let(:baby_ship){Ships.new(2)}
  let(:mother_ship){Ships.new(4)}
  let(:board){double :board}

  it 'should not be destroyed by default' do
    expect(baby_ship).not_to be_destroyed
  end

  it 'can be destroyed' do
    baby_ship.destroy!
    expect(baby_ship).to be_destroyed
  end

  it 'should have a size' do 
    expect(baby_ship.length).to eq 2
  end

  it 'should create a vertical boat' do
    ship.set_coordinates("A1",:vertical)
    expect(ship.coordinates).to eq [[0,0],[1,0],[2,0]]
  end


  it 'should create a horizontal boat' do
    ship.set_coordinates("A1",:horizontal)
    expect(ship.coordinates).to eq [[0,0],[0,1],[0,2]]
  end
  # it 'is not hit by default' do
  # end

  # it 'can be hit' do
  # end

end