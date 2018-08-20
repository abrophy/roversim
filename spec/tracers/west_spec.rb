RSpec.describe Tracers::West do
  let(:west) { Tracers::West.new }

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
    let(:origin) { { x: 0, y: 0 } }
    let(:result) { { x: -1, y: 0 } }

    it 'returns the correct result coordinates' do
      expect(west.move(origin)).to eq(result)
    end
  end
end
