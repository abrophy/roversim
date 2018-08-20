RSpec.describe Tracers::South do
  let(:south) { Tracers::South.new }

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
    let(:origin) { { x: 0, y: 0 } }
    let(:result) { { x: 0, y: -1 } }

    it 'returns the correct result coordinates' do
      expect(south.move(origin)).to eq(result)
    end
  end

  describe '#to_s' do
    it 'returns the correct string' do
      expect(south.to_s).to eq('S')
    end
  end
end
