require_relative 'bike.rb'

class DockingStation
  attr_reader :bike

  def release_bike
    raise ArgumentError.new("No bike present") if bike  == nil
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end
end
