class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "There are no bikes" if @bikes.empty?
  end

  def dock(bike)
    fail "The station is full" if @bikes.count >= 20
    @bikes.push(bike) if @bikes.count < 20

  end

end
