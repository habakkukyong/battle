require 'game'

describe Game do
  let(:p2) { double :p2 }

  describe "#attack" do
    it 'calls receive damage on the argument' do
      expect(p2).to receive(:receive_damage)
      subject.attack(p2)
    end
  end
end
