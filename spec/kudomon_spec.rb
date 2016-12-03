require 'kudomon'

describe Kudomon do
  let(:kudo) { described_class.new(15, 10) }

  it 'Has a location' do
    expect(kudo).to respond_to(:location)
    expect(kudo.location).to eq [15, 10]
  end
end
