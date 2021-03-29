require 'oystercard'



describe Oystercard do
let(:entry_station) { double :station }
let(:exit_station)  { double :station }
let(:station) { double :station }

  it ' has a balance'do
    oystercard = Oystercard.new
    expect(oystercard.balance).to eq(0)
  end

  it 'adds money in the card' do
  oystercard = Oystercard.new
  oystercard.top_up(0)
  expect(oystercard.top_up(1)).to eq(1)
end


  it 'raises an error if the maximum balance is exceeded'do
  oystercard = Oystercard.new
  maximum_balance = Oystercard::MAXIMUM_BALANCE
  oystercard.top_up(maximum_balance)
  expect{oystercard.top_up(1)}.to raise_error ' Maximum balance of 20 exceeded '
end

  it 'takes the money from the card'do
  oystercard = Oystercard.new
  oystercard.top_up(10)
  expect(oystercard.deduct(5)).to eq(5)
  end

  it 'checks if the the card is in use'do
  oystercard = Oystercard.new
  expect(oystercard.in_journey?).to eq(true)
end

 it 'checks if the card has been touched in' do
 oystercard = Oystercard.new
 oystercard.top_up(10)
 expect(oystercard.touch_in(station)).to eq(true)
end

  it ' checks if the card has been touched out'do
  oystercard = Oystercard.new
  expect(oystercard.touch_out(exit_station)).to eq(false)
  end

 it 'raises an error if the amount in the card is less than £1' do
   oystercard = Oystercard.new
   expect{ oystercard.touch_in(station) }.to raise_error 'insufficient balance'
  end

  it 'shows the correct ammount deducted from the card' do
    oystercard = Oystercard.new
    oystercard.top_up(10)
    expect{  oystercard.touch_out(exit_station) }.to change{ oystercard.balance}.by(-1)
  end

  it 'shows from where the journey started' do
    oystercard = Oystercard.new
    oystercard.top_up(5)
    oystercard.touch_in(station)
    expect(oystercard.entry_station[0]).to eq(station) # could be also eq([station])
 end

 it 'store exit station' do
   oystercard = Oystercard.new
   oystercard.top_up(9)
   oystercard.touch_in(entry_station)
   oystercard.touch_out(exit_station)
   expect(oystercard.exit_station).to eq([exit_station])# also could be exit_station[0]
 end
end
