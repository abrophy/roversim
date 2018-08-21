RSpec.describe Tracers::North do
  let(:north) { Tracers::North.new }
  let(:rover) { double }

  describe '#turn_left' do
    it 'returns west' do
      expect(north.turn_left).to be_a Tracers::West
    end
  end

  describe '#right' do
    it 'returns east' do
      expect(north.turn_right).to be_a Tracers::East
    end
  end

  describe '#move' do
    it 'increases rover y coordinate value' do
      expect(rover).to receive(:increase_y)
      north.move(rover)
    end
  end

  describe '#to_s' do
    it 'returns the correct string' do
      expect(north.to_s).to eq('N')
    end
  end
end
