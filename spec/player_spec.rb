require 'player'

describe Player do
    subject(:rafa) { Player.new('Rafa') }
    subject(:nima) { Player.new('Nima, the wizard')}
  describe '#name' do 
    it 'returns the name' do 
        expect(rafa.name).to eq 'Rafa'
    end
  end

  describe '#hit_points' do 
    it 'returns the hit points' do
      expect(nima.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
end
  describe '#attack' do 
    it 'damages the player' do
      expect(nima).to receive(:receive_damage)
      rafa.attack(nima)
    end
  end
  
  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect {nima.receive_damage}.to change {nima.hit_points}.by(-10)
    end
  end
end

