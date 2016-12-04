require 'grass_type'

describe GrassType do
  let(:grassy) { described_class.new(15, 15) }

  it 'inherts location from its parent calss' do
    expect(grassy).to respond_to(:location)
    expect(grassy.location).to eq [15, 15]
  end

  it 'has species' do
    expect(grassy.species).to eq 'Sourbulb'
  end
end
