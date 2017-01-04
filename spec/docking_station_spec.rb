require 'docking_station'

describe DockingStation do
  it 'releases bike' do
    should respond_to(:release_bike)
    expect(subject.release_bike).not_to eq(nil)
    expect(subject.release_bike.working?).to eq(true)
  end
end
