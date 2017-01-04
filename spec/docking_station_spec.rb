require 'docking_station'

describe DockingStation do
  it 'releases bike' do
    should respond_to(:release_bike)
  end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
