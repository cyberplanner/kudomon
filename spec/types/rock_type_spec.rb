require 'types/rock_type'

describe RockType do
  let(:position) { [15, 15] }
  let(:rocky) { described_class.new(position) }

  it 'inherts location from its parent calss' do
    expect(rocky).to respond_to(:location)
    expect(rocky.location).to eq [15, 15]
  end

  it 'has species' do
    expect(rocky.species).to eq 'Balboa'
  end
end
