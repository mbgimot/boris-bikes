require_relative 'bike.rb'

class DockingStation
  def bikes
    @@bikes
  end
  
  def release_bike
    raise "No bike present" unless @@bikes
    @@bikes
  end

  def dock(bike)
    raise "Bike already docked" if @@bikes
    @@bikes = bike
  end
end
