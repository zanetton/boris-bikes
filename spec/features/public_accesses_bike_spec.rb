

feature 'member of the public accesses bike' do
	scenario 'docking station releases a working bike' do
		docking_station = DockingStation.new # initalize a new object, an instance of the docking station
		bike = docking_station.release_bike # ask the docking station to release a bike		
		expect(bike).to be_working # expect the bike to respond to the method 'working?' with true
	end

end