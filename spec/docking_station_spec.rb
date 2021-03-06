require 'docking_station'

describe DockingStation do

  it 'responds to the method "release_bike"' do
    expect(subject).to respond_to(:release_bike)
  end
  it 'Gets a working bike' do
    expect(subject.release_bike).to be_working
  end
end
