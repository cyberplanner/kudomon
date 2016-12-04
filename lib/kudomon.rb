
class Kudomon
  attr_reader :location
  attr_reader :species
  attr_reader :type

  def initialize(position, kudo_type)
    @dna_hash = {"Electric" => "Chikapu", "Fire" => "Mancharred", "Grass" => "Sourbulb",
                  "Psychic" => "Neo", "Rock" => "Balboa", "Water" => "Puddle"}
    @location = position
    @type = kudo_type
    @species = @dna_hash[kudo_type]
  end

  def position
    [rand(1..50), rand(1..50)]
  end

  def kudo_type
    ["Electric", "Fire", "Grass", "Psychic", "Rock", "Water"].sample
  end

end
