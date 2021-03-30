require 'station'


describe 'Station' do

it ' shows the name of the station' do
station = Station.new('name',  'zone')
  expect(station.display_zone).to eq('Old Street')
end

it 'calculate the fare between different zones'do
station = Station.new('name', 'zone')
expect(station.calculated_fare).to eq(0)
end 
end
