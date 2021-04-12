require 'journey_log'

describe 'JourneyLog' do
it 'starts a journey'do
journey_log = JourneyLog.new
expect(journey_log.start).to eq(1)
end
end
