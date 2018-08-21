RSpec.describe Tracers::West do
  let(:west) { Tracers::West.new }
  let(:rover) { double }

  describe '#turn_left' do
    it 'returns south' do
      expect(west.turn_left).to be_a Tracers::South
    end
  end

  describe '#right' do
    it 'returns north' do
      expect(west.turn_right).to be_a Tracers::North
    end
  end

  describe '#move' do
    it 'decreases rover x coordinate value' do
      expect(rover).to receive(:decrease_x)
      west.move(rover)
    end
  end

  describe '#to_s' do
    it 'returns the correct string' do
      expect(west.to_s).to eq('W')
    end
  end
end
