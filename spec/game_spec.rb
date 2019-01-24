require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:p2) { double :p2 }

  describe "#attack" do
    it 'calls receive damage on the argument' do
      expect(p2).to receive(:receive_damage)
      game.attack(p2)
    end
  end
end
