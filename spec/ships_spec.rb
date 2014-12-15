require 'ships'

describe Ships do

  let(:ship){Ships.new}

  it 'should not be destroyed by default' do
    expect(ship).not_to be_destroyed
  end

end