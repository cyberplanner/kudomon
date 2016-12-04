
class Trainer
  attr_reader :location
  attr_reader :near_by
  def initialize
    @location = [0, 0]
    @near_by = []
  end

  def nearby_kudomons(array_of_kudomons)
    @all_kudomons = array_of_kudomons
    @all_kudomons.each do |kudomon|
      location = kudomon.location
      if location[0] < 25 && location[1] < 25
        @near_by << kudomon
      end
    end
  end
end
