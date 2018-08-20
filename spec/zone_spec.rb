RSpec.describe Zone do
  let(:zone_size){ [6, 4] }
  let(:zone) { Zone.new(zone_size) }

  it 'initializes with correct values' do
    expect(zone.width).to eq(6)
    expect(zone.height).to eq(4)
  end
end
