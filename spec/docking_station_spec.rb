require "docking_station"

describe DockingStation do

  describe "#release_bike" do
    it 'releases bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
      it 'raises an error when there are no bikes available' do
        #we are not docking a bike first now
        #subject is DockingStation.new
        expect {subject.release_bike}.to raise_error 'No bikes available'
      end
      it 'releases working bikes' do
        bike = Bike.new
        expect(bike).to be_working
      end
  end

  describe "#dock" do
    it 'raises an error when full' do
       20.times{subject.dock(Bike.new)}
       expect {subject.dock (Bike.new)}.to raise_error 'Docking station full'
    end
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
  end

end
