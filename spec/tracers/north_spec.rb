RSpec.describe Tracers::North do
  let(:north) { Tracers::North.new }


  describe '#turn_left' do
    let(:west) { Tracers::West }

    it 'returns west' do
      expect_any_instance_of(west)
      north.turn_left
    end
  end

  describe '#right' do
    let(:east) { Tracers::East }

    it 'returns east' do
      expect_any_instance_of(east)
      north.turn_left
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
