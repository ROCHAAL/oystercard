require 'journey'

describe 'Journey'do

it ' shows the journey history of the card' do
   journey = Journey.new('entry_station', 'exit_station')
   expect(journey).to be_instance_of(Journey)
 end

 it 'register the end of the journey' do
   journey = Journey.new('entry_station', 'exit_station')
   expect(journey.finish).to eq(true)
 end

 it ' charges the fare if an entry station is given.' do
   journey = Journey.new('entry_station', 'exit_station')
   expect(journey.fare).to eq(Journey::FARE_ZONE_ONE)

 end

 it ' check if the journey has been complete' do
   journey = Journey.new('entry_station', 'exit_station')
   expect(journey.complete?).to eq(true)
 end

 it 'returns a penalty fare if no exit station given' do
   journey = Journey.new('entry_station', 'exit_station')
   expect(journey.fare).to eq(Journey::PENALTY_FARE)
 end
end
