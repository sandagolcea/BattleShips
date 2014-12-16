require 'board'

describe Board do

  let(:board){Board.new}
  
  it 'should have a size' do
    expect(board.size).not_to eq nil
  end

  it 'should initialize an empty board' do

  end
end