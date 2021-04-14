require 'journey_log'


describe 'JourneyLog' do
  let(:journey_class) {double :journey}
  let(:journeys) {double :journey}
  let(:entry_station) {double :journey}
  let(:station)  { double :station }
  let(:current_journey) {double:station}

it 'starts a journey'do
journey_log = JourneyLog.new
expect(journey_log.start(entry_station)).to eq([entry_station])
end

it 'returns an incomplete journey'do
journey_log = JourneyLog.new
expect(journey_log).to respond_to(:current_journey)
end
end
