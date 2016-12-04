require 'fire_type'

describe FireType do
  let(:flamo) { described_class.new(15, 15) }

  it 'inherts location from its parent calss' do
    expect(flamo.location).to eq [15, 15]
  end
end
