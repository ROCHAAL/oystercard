# class JourneyLog
#
# attr_reader :journey, :journeys, :entry_station, :station, :current_journey
#   def initialze(journey) # ( is it working as an independency injection ? )
#     @journey = journey
#     @journeys = []
#     @station = station
#     @current_journey = current_journey
#   end
#
#   def start(entry_station)
#     @journey.push(station)
#   end
#
# end

class JourneyLog
  def initialize(journey_class: Journey )
    @journey_class = journey_class
    @journeys = []
  end

  def start(station)
    @journey_class.new(entry_station: station)
  end
end
