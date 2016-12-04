require 'types/water_type'

describe WaterType do
  let(:position) { [15, 15] }
  let(:puddle) { described_class.new(position) }

  it 'inherts location from its parent calss' do
    expect(puddle).to respond_to(:location)
    expect(puddle.location).to eq [15, 15]
  end

  it 'has species' do
    expect(puddle.species).to eq 'Puddle'
  end
end
