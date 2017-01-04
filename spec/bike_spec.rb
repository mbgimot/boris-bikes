require 'bike'

describe Bike do
  it 'checks if working' do
    expect(subject).to respond_to(:working?)
  end
end
