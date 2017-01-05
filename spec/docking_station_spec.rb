require 'docking_station'

describe DockingStation do
  it 'releases bike' do
    should respond_to(:release_bike)
  end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks bike' do
    should respond_to(:dock).with(1).argument
  end

  it 'verifies if bike docked' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end
end
