require 'board'

describe Board do

  let(:board){Board.new}
  
  it 'should have a size' do
    expect(board.size).not_to eq nil
  end

  it 'should initialize an empty board' do
    expect(board.create(2)).to eq [[0,0,0],[0,0,0],[0,0,0]]
  end

  it 'should be able to be shot at' do
    board.create(2)
    board.receive_shot(1,1) #B2
    expect(board.show).to eq [[0,0,0],[0,1,0],[0,0,0]]
  end

end