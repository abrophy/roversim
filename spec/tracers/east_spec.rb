RSpec.describe Tracers::East do
  let(:east) { Tracers::East.new }


  describe '#turn_left' do
    let(:north) { Tracers::North }

    it 'returns north' do
      expect(east.turn_left).to be_a Tracers::North
    end
  end

  describe '#right' do
    let(:south) { Tracers::South }

    it 'returns south' do
      expect(east.turn_right).to be_a Tracers::South
    end
  end

  describe '#move' do
    let(:origin) { { x: 0, y: 0 } }
    let(:result) { { x: 1, y: 0 } }

    it 'returns the correct result coordinates' do
      expect(east.move(origin)).to eq(result)
    end
  end
end
