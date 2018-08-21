RSpec.describe Controller do
  let(:rover) { double }
  let(:controller) { Controller.new(rover) }

  describe '#process_instructions' do
    it 'turns left' do
      expect(rover).to receive(:turn_left)
      controller.process_instructions('L')
    end

    it 'turns right' do
      expect(rover).to receive(:turn_right)
      controller.process_instructions('R')
    end

    it 'moves forward' do
      expect(rover).to receive(:move)
      controller.process_instructions('M')
    end

    it 'correctly processes a chain of instructions' do
      expect(rover).to receive(:turn_left).ordered
      expect(rover).to receive(:turn_right).ordered
      expect(rover).to receive(:move).ordered

      controller.process_instructions('LRM')
    end
  end

  describe '#destination' do
    it 'polls the rover for position data string' do
      expect(rover).to receive(:to_s)
      controller.destination
    end
  end
end
