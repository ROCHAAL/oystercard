class Journey
FARE_ZONE_ONE = 5
PENALTY_FARE = 6

  attr_reader :entry_station, :exit_station, :complete

  def initialize(entry_station, exit_station)

    @entry_station = entry_station
    @exit_station = true
    @complete = true

  end

  def finish
    @exit_station == true
  end

  def fare

    if @exit_station == false
      return PENALTY_FARE
    elsif @entry_station == entry_station
     return FARE_ZONE_ONE
    end
  end

  def complete?
    true
  end

end



#if the card has an exit station
  # return the FARE_ZONE_ONE
# elsif the card hasan't got  the exit station
  #  return PENALTY_FARE
#end
  #return
