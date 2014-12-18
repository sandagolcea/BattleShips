require 'board'

describe Board do
  WATER = 0
  BOAT = 1
  MISS = 2
  HIT = 3
  KILL = 4
  
  let(:board){Board.new(:size => 2)}
  let(:ship){double :ship}
  
  it 'should have a size' do
    expect(board.size).not_to eq nil
  end

  it 'should initialize an empty board' do
    expect(board).to be_empty
  end

  it 'should not be empty after a ship is added' do
    allow(ship).to receive(:coordinates).and_return([[0,0],[1,0],[2,0]])
    board.add_ship(ship)
    expect(board).not_to be_empty
  end

  it 'should be able to be shot at' do
    board.receive_shot(1,1) #B2
    expect(board).not_to be_empty
  end

  it 'should not be able to take shots on negative coordinates' do
    board.receive_shot(1,-1) 
    expect(board).to be_empty
  end

  it 'should not be able to take shots outside the boundaries' do
    board.receive_shot(1,40) 
    expect(board).to be_empty
  end

  it 'should accept shots on the boundaries' do
    board.receive_shot(0,0) 
    expect(board).not_to be_empty
  end


  it 'should not add a ship outside the board' do
    allow(ship).to receive(:coordinates).and_return([[0,0],[1,0],[30,0]])
    expect(board.add_ship(ship)).to eq false
  end

  it 'should not add a ship on a position that is already taken' do
    allow(ship).to receive(:coordinates).and_return([[0,0],[0,1],[0,2]])
    board.add_ship(ship)
    expect(board.add_ship(ship)).to eq false
  end


  it 'should have a list with ships' do
    allow(ship).to receive(:coordinates).and_return([[0,0],[1,0],[2,0]])
    board.add_ship(ship)
    expect(board.ships.count).to eq 1
  end

  it 'should not shoot over existing shot' do
    board.receive_shot(1,2)
    expect(board.receive_shot(1,2)).to eq false
  end

  it 'should make sure the ship is damaged' do
  end

end
