require 'electric_type'

describe ElectricType do
  let(:electro) { described_class.new(15, 15) }

  it 'inherts location from its parent calss' do
    expect(electro).to respond_to(:location)
    expect(electro.location).to eq [15, 15]
  end
end
