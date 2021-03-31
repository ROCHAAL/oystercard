class Station
  attr_reader :name, :zone
  def initialize(name, zone)
    @name = name
    @zone = zone
    @travel_history = []
  end

def display_zone
  "Old Street"
end

def calculated_fare
  0
end

end
