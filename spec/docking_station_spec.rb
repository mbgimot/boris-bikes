require 'docking_station'

describe DockingStation do
  it 'releases bike' do
    should respond_to(:release_bike)
  end
end
