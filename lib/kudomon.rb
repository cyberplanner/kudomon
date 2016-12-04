
class Kudomon
  attr_reader :location

  def initialize(position)
    @location = position
  end

  def position
    [rand(1..50), rand(1..50)]
  end

end
