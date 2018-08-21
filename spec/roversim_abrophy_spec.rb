RSpec.describe RoversimAbrophy do
  let(:input_array) {
    ['88',
     '12 E',
     'MMLMRMMRRMML']
  }

  it 'has a version number' do
    expect(RoversimAbrophy::VERSION).not_to be nil
  end

  describe '#process' do
    it 'correctly predicts the rover final destination' do
      expect(RoversimAbrophy.process(input_array)).to eq('3 3 S')
    end
  end
end
