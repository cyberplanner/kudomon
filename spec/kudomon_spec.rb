require 'kudomon'

describe Kudomon do
  let(:position) { [15, 10] }
  let(:kudo) { described_class.new(position) }

  it 'Has a location' do
    expect(kudo).to respond_to(:location)
    expect(kudo.location).to eq [15, 10]
  end
end
