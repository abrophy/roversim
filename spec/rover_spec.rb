RSpec.describe Rover do
  let(:zone_size) { [8, 8] }
  let(:position) { [1, 2, 'N'] }
  let(:zone) { double }
  let(:rover) { Rover.new(zone, position) }

  it 'initializes with correct values' do
    expect(rover.x).to eq(1)
    expect(rover.y).to eq(2)
    expect(rover.direction).to eq('N')
  end

  describe '#turn_left' do
    it 'changes direction of rover correctly' do
      rover.turn_left
      expect(rover.direction).to eq('W')
    end
  end

  describe '#turn_right' do
    it 'changes direction of rover correctly' do
      rover.turn_right
      expect(rover.direction).to eq('E')
    end
  end

  describe '#increase_x' do
    it 'increase x coordinate correctly' do
      rover.increase_x
      expect(rover.x).to eq(2)
    end
  end

  describe '#decrease_x' do
    it 'decreases x coordinate correctly' do
      rover.decrease_x
      expect(rover.x).to eq(0)
    end
  end

  describe '#increase_y' do
    it 'increases y coordinate correctly' do
      rover.increase_y
      expect(rover.y).to eq(3)
    end
  end

  describe '#decrease_y' do
    it 'decreases y coordinate correctly' do
      rover.decrease_y
      expect(rover.y).to eq(1)
    end
  end

  describe '#to_s' do
    it 'returns position and direction in a string' do
      expect(rover.to_s).to eq('1 2 N')
    end
  end

end
