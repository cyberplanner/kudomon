require 'trainer'


describe Trainer do
  let(:ash) { described_class.new }
  it 'Has a location' do
    expect(ash).to respond_to(:location)
  end

  it 'Trainer is in the middle of the area' do
    expect(ash.location).to eq [0, 0]
  end

  context "there are kudomons in the area" do
    let(:Mancharred) { double("Mancharred", :class => FireType, :species => "Mancharred", :position => [5, 5] ) }
    it 'know which one is the nearest' do
      expect(ash).to respond_to(:nearest)
    end
  end

end
