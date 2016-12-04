require 'types/fire_type'

describe FireType do
  let(:position) { [15, 15] }
  let(:flamo) { described_class.new(position) }

  it 'inherts location from its parent calss' do
    expect(flamo).to respond_to(:location)
    expect(flamo.location).to eq [15, 15]
  end

  it 'has species' do
    expect(flamo.species).to eq 'Mancharred'
  end
end
