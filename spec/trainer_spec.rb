require 'trainer'


describe Trainer do
  let(:trainer) { described_class.new(15, 15) }
  it 'Has a location' do
    expect(trainer).to respond_to(:location)
    expect(trainer.location).to eq [15, 15]
  end

end
