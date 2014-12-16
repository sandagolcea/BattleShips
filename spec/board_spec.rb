require 'board'

describe Board do

  let(:board){Board.new(:size => 2)}
  let(:ship){double :ship}
  
  it 'should have a size' do
    expect(board.size).not_to eq nil
  end

  it 'should initialize an empty board' do
    expect(board.show).to eq [[0,0,0],[0,0,0],[0,0,0]]
  end

  it 'should be able to be shot at' do
    board.receive_shot(1,1) #B2
    expect(board.show).to eq [[0,0,0],[0,1,0],[0,0,0]]
  end

  it 'should have a list with ship' do
    # ary = [[0,1],[0,2],[0,3]]
    allow(ship).to receive(:coordinates).and_return([[0,0],[1,0],[2,0]])
    board.add_ship(ship)
    expect(board.ships.count).to eq 1
    expect(board.show).to eq [[3,0,0],[3,0,0],[3,0,0]]
  end

  it 'should etc' do
  end

end
