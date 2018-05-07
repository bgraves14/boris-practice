require_relative 'bike'

class DockingStation

attr_reader :bike

  def release_bike
    fail 'No Bikes Available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'Docking Station Full' if @bike
    @bike = bike
  end
end
