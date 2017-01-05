require_relative 'bike.rb'

class DockingStation
  attr_reader :bike

  def release_bike
    raise "No bike present" unless bike
    bike
  end

  def dock(bike)
    @bike = bike
  end
end
