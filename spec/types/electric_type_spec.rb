require 'types/electric_type'

describe ElectricType do
  let(:position) { [15, 15] }
  let(:electro) { described_class.new(position) }

  it 'inherts location from its parent calss' do
    expect(electro).to respond_to(:location)
    expect(electro.location).to eq [15, 15]
  end

  it 'has species' do
    expect(electro.species).to eq 'Chikapu'
  end
end
