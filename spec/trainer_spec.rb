require 'trainer'


describe Trainer do
  let(:ash) { described_class.new }
  it 'Has a location' do
    expect(ash).to respond_to(:location)
  end

  it 'Trainer is in the middle of the area' do
    expect(ash.location).to eq [0, 0]
  end

  # context "there are kudomons in the area" do
  #   let(:mancharred) { double("Mancharred", :class => FireType, :species => "Mancharred", :position => [50, 5] ) }
  #   let(:sourbulb) { double("Sourbulb", :class => GrassType, :species => "Sourbulb", :position => [10, 10] ) }
  #   it 'know which one is the nearest' do
  #     expect(ash).to respond_to(:nearby_kudomons).with(1).argument
  #     expect(ash.nearby_kudomons).to eq sourbulb
  #   end
  # end

end
