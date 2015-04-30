feature 'member of public returns a bike' do
  scenario 'bike cannot be docked when the station is full' do
    docking_station = DockingStation.new
    capacity = DockingStation::DEFAULT_CAPACITY
    capacity.times {docking_station.dock Bike.new}
    expect { docking_station.dock Bike.new}.to raise_error 'Docking station full'
  end

end
