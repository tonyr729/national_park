class Car
  attr_reader :passengers

  def initialize
    @passengers = []
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    @passengers.count do |passenger|
      passenger.adult?
    end
  end
  
end