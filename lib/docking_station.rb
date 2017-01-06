require_relative 'bike.rb'

class DockingStation
  def bikes
    @bikes
  end

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bike present" if @bikes.empty?
    @bikes[-1]
  end

  def dock(bike)
    raise "Bike already docked" if @bikes.count == 20
    @bikes << bike
  end
end
