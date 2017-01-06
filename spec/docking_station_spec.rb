require 'docking_station'

describe DockingStation do
  bike = Bike.new
  subject { @ds = DockingStation.new(15) }

  describe '#release_bike' do
    it 'releases bike' do
      should respond_to(:release_bike)
    end
    it 'releases bike if bike present' do
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
      expect(subject.dock(bike)).to include(bike)
    end
    it 'dock error when 20 bike are present' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(bike) }
      expect {subject.dock(bike)}.to raise_error("Bike already docked")
    end
  end

  describe '#initialize' do
    it 'sets capacity' do
      expect(subject.instance_variable_get(:@capacity)).to eq(15)
    end
    it 'default capcity' do
      expect(DockingStation.new.instance_variable_get(:@capacity)).to eq(20)
    end
    end
end
