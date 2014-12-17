require 'player'

describe Player do

  let(:player){Player.new("Me")}
  let(:ship){double :ship, length => 3}


  it 'can place ships on the board' do
    # expect(player.place_ship("A1", :vertical)).to eq "A1A2A3A4"
  #   allow(board).to receive(:baby_ship).and_return(true)
    player.place_ship("A1", :vertical)
  end
  
  it 'should be able to take a shot' do
  end


end