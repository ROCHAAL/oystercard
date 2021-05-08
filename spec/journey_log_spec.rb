# require 'journey_log'
#
#
# describe 'JourneyLog' do
#   let(:journey) {double :journey } # is this refering to the journey class ?
#
#
# it "starts a journey " do
#   journey_log = JourneyLog.new(journey)
#    p expect(journey_log).to receive(:start).with(entry_station: station )
#
#   end
# end
require 'journey_log'
describe JourneyLog do

  let(:journey){ double :journey } #this may need to have some methods
  let(:station){ double :station }
  let(:journey_class){double :journey_class}
p  subject {described_class.new(journey_class: journey_class)} #whithout this line the Journey class is called from external
  # describe_class is a method to describea a class ( in this case is it describing JourneyLog??)
  # need to understand line 20

  describe '#start' do
     it 'starts a journey' do
       expect(journey_class).to receive(:new).with(entry_station: station)
       subject.start(station)
     end

     it 'records a journey' do
      allow(journey_class).to receive(:new).and_return journey
      subject.start(station)
       expect(subject.journeys).to include journey
     end
   end

end
