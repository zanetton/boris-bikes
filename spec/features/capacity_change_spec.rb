
feature 'maintainer wishes to amend capacity of docking station'do
  scenario 'ability to change capacity to change default on some of the docking station' do
    capacity = 50
    docking_station = DockingStation.new(capacity)
    expect (docking_station.capacity).to eq 50
  end
end
