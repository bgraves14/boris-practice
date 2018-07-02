require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20
attr_reader :capacity, :bikes

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    fail 'No Bikes Available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking Station Full' if full?
    @bikes << bike
  end

  private

  # attr_reader :bikes #why does it not work here?

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
