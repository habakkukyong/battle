require 'player'

describe Player do
  subject(:p1) { Player.new('p1') }
  subject(:p2) { Player.new('p2') }

  describe "#name" do
    it 'returns player name' do
      expect(p1.name).to eq "p1"
    end
  end

  describe "#hitpoints" do
    it 'returns player hitpoints' do
      expect(p1.hp).to eq 60
    end
  end

  describe "#attack" do
    it 'calls receive damage on the argument' do
      expect(p2).to receive(:receive_damage)
      p1.attack(p2)
    end
  end

  describe "#receive_damage" do
    it 'can be called with 1 parameter' do
      expect { p1.receive_damage }.to change{ p1.hp }.by -10
    end
  end
end
