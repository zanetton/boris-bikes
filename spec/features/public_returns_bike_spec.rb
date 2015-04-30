feature 'member of public returns a bike' do
  scenario 'bike cannot be docked when the station is full' do
    docking_station = DockingStation.new
    20.times {docking_station.dock Bike.new}
    expect { docking_station.dock Bike.new}.to raise_error 'Docking station full'
  end

end
