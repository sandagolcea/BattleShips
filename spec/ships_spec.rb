require 'ships'

describe Ships do

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

  
  # it 'is not hit by default' do
  # end

  # it 'can be hit' do
  # end

end