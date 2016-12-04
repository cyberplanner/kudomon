require 'psychic_type'

describe PsychicType do
  let(:psy) { described_class.new(15, 15) }

  it 'inherts location from its parent calss' do
    expect(psy).to respond_to(:location)
    expect(psy.location).to eq [15, 15]
  end
end
