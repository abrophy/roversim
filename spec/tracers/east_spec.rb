RSpec.describe Tracers::East do
  let(:east) { Tracers::East.new }
  let(:rover) { double }

  describe '#turn_left' do
    it 'returns north' do
      expect(east.turn_left).to be_a Tracers::North
    end
  end

  describe '#right' do
    it 'returns south' do
      expect(east.turn_right).to be_a Tracers::South
    end
  end

  describe '#move' do
    it 'increases rover x coordinate value' do
      expect(rover).to receive(:increase_x)
      east.move(rover)
    end
  end

  describe '#to_s' do
    it 'returns the correct string' do
      expect(east.to_s).to eq('E')
    end
  end
end
