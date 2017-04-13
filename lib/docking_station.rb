class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "There are no bikes" if empty?
  end

  def dock(bike)
    fail "The station is full" if full?
    @bikes.push(bike) if @bikes.count < 20
  end

  def full?
    @bikes.count >= 20 ? true : false
  end

  def empty?
    @bikes.count == 0 ? true : false
  end

private :empty?, :full?

end
