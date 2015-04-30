

feature 'member of the public accesses bike' do
	scenario 'docking station releases a working bike' do
		docking_station = DockingStation.new # initalize a new object, an instance of the docking station
		docking_station.dock Bike.new
		bike = docking_station.release_bike # ask the docking station to release a bike
		expect(bike).to be_working # expect the bike to respond to the method 'working?' with true
	end

scenario 'docking station does not release a bike when there are none avaialable'do
	docking_station = DockingStation.new
	expect {docking_station.release_bike}.to raise_error 'No bikes available'
end
end
