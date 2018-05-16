require_relative 'bike'

class DockingStation

attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No Bikes Available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking Station Full' if @bikes.count >= 20
    @bikes << bike
  end
end
