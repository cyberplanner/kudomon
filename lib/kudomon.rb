
class Kudomon
  attr_reader :location

  def initialize(position, kudomon_type)
    @location = position
    @species = type
  end

  def position
    [rand(1..50), rand(1..50)]
  end

  def kudomon_type
    ["ElectricType", "FireType", "GrassType",
    "PsychicType", "RockType", "WaterType"].sample
  end

end
