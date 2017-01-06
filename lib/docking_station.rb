require_relative 'bike.rb'

class DockingStation

  DEFAULT_CAPACITY = 20
  attr_accessor :capacity

  def bikes
    @bikes
  end

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
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
    @bikes.count >= DEFAULT_CAPACITY ? true : false
  end

  def empty?
    @bikes.empty? ? true : false
  end
end
