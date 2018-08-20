RSpec.describe Rover do
  let(:zone_size) { [8, 8] }
  let(:position) { [1, 2, 'N'] }
  let(:zone) { Zone.new(zone_size) }
  let(:rover) { Rover.new(zone, position) }

  it 'initializes with correct values' do
    expect(rover.position).to eq([1, 2])
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
end
