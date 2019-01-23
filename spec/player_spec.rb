require 'player'

describe Player do
  subject(:p1) { Player.new('p1') }
  
  describe "#name" do
    it 'returns player name' do
      expect(p1.name).to eq "p1"
    end
  end
end
