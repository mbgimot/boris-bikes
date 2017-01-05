require 'docking_station'

describe DockingStation do
  bike = Bike.new
  it 'releases bike' do
    should respond_to(:release_bike)
  end

  it 'releases working bikes' do
    expect(bike).to be_working
  end

  it 'docks bike' do
    should respond_to(:dock).with(1).argument
  end

  it 'verifies if bike docked' do
    expect(subject.dock(bike)).to eq(bike)
  end
end

describe DockingStation do
  it 'verifies if bike present' do
    expect {subject.release_bike}.to raise_error("No bike present")
  end
end
