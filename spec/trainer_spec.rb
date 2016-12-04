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
    let(:mancharred) { double("Mancharred", :class => FireType, :species => "Mancharred", :location => [50, 5] ) }
    let(:sourbulb) { double("Sourbulb", :class => GrassType, :species => "Sourbulb", :location => [10, 10] ) }
    let(:array_of_kudomons ) { [mancharred, sourbulb] }
    it 'know which kudomons are near in the area' do
      expect(ash).to respond_to(:nearby_kudomons).with(1).argument
      ash.nearby_kudomons(array_of_kudomons)
      expect(ash.near_by.first).to eq sourbulb
    end
  end

end
