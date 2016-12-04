require 'rock_type'

describe RockType do
  let(:rocky) { described_class.new(15, 15) }

  it 'inherts location from its parent calss' do
    expect(rocky).to respond_to(:location)
    expect(rocky.location).to eq [15, 15]
  end
end
