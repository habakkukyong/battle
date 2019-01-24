require 'game'

describe Game do
  let(:p1) { double :p1 }
  let(:p2) { double :p2 }
  subject(:game) { described_class.new(p1, p2) }

  describe "#attack" do
    it 'calls receive damage on the argument' do
      expect(p2).to receive(:receive_damage)
      game.attack(p2)
    end
  end
end
