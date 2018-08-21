RSpec.describe Tracers::South do
  let(:south) { Tracers::South.new }
  let(:rover) { double }

  describe '#turn_left' do
    it 'returns east' do
      expect(south.turn_left).to be_a Tracers::East
    end
  end

  describe '#right' do
    it 'returns west' do
      expect(south.turn_right).to be_a Tracers::West
    end
  end

  describe '#move' do
    it 'decreases rover y coordinate value' do
      expect(rover).to receive(:decrease_y)
      south.move(rover)
    end
  end

  describe '#to_s' do
    it 'returns the correct string' do
      expect(south.to_s).to eq('S')
    end
  end
end
