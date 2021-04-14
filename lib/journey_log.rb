class JourneyLog

attr_reader :journey_class, :journeys, :entry_station, :station, :current_journey
  def initialze(journey_class)
    @journey_class = journey_class
    @journeys = []
    @entry_station = entry_station
    @station = station
    @current_journey = current_journey
  end

  def start(entry_station)
  p  @station
  end

  private

  def current_journey
    @current_journey
  end

end
