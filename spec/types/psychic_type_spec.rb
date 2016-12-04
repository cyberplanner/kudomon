require 'types/psychic_type'

describe PsychicType do
  let(:position) { [15, 15] }
  let(:psy) { described_class.new(position) }

  it 'inherts location from its parent calss' do
    expect(psy).to respond_to(:location)
    expect(psy.location).to eq [15, 15]
  end

  it 'has species' do
    expect(psy.species).to eq 'Neo'
  end
end
