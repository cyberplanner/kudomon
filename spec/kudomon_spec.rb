require 'kudomon'

describe Kudomon do
  let(:position) { [15, 10] }
  let(:kudo_type) { "Electric" }
  let(:kudo) { described_class.new(position, kudo_type) }

  it 'Has a location' do
    expect(kudo).to respond_to(:location)
    expect(kudo.location).to eq [15, 10]
  end

  it 'has species' do
    expect(kudo.species).to eq 'Chikapu'
  end
end
