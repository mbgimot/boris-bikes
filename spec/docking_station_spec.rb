require 'docking_station'

describe DockingStation do
  bike = Bike.new
  describe '#release_bike' do
    it 'releases bike' do
      should respond_to(:release_bike)
    end
    it 'releases same bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end
    it 'Errors when no bike present' do
      expect {subject.release_bike}.to raise_error("No bike present")
    end
  end

  describe '#working?' do
    it 'releases working bikes' do
      expect(bike).to be_working
    end
  end

  describe '#dock' do
    it 'docks bike' do
      should respond_to(:dock).with(1).argument
    end
    it 'verifies if bike docked' do
      expect(subject.dock(bike)).to eq(bike)
    end
  end
end
