require_relative 'bike.rb'

class DockingStation
  def bikes
    @bikes
  end

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bike present" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Bike already docked" if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.count >= 20 ? true : false
  end

  def empty?
    @bikes.empty? ? true : false
  end
end
