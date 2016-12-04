require 'water_type'

describe WaterType do
  let(:puddle) { described_class.new(15, 15) }

  it 'inherts location from its parent calss' do
    expect(puddle).to respond_to(:location)
    expect(puddle.location).to eq [15, 15]
  end
end
