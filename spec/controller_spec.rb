RSpec.describe Controller do
  before do
    @input_string = '88'\
      '12 E'\
      'MMLMRMMRRMML'
  end

  it 'can be initialized with input' do
    controller = Controller.new(@input_string)
    expect(controller.input).to eq(@input_string)
  end
end
