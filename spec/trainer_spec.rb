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
      expect(ash.near_by.first.class).to eq GrassType
    end
    it "trainer can catch a nearby kudomon" do
      expect(ash).to respond_to(:throw_kudoball).with(1).argument
      ash.nearby_kudomons(array_of_kudomons)
      ash.throw_kudoball(ash.near_by[0])
      expect(ash.collection).to include sourbulb
      expect(ash.near_by).not_to include sourbulb
    end
  end

end
