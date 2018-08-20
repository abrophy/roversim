RSpec.describe Tracers::North do
  let(:north) { Tracers::North.new }

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
    let(:origin) { { x: 0, y: 0 } }
    let(:result) { { x: 0, y: 1 } }

    it 'returns the correct result coordinates' do
      expect(north.move(origin)).to eq(result)
    end
  end
end
