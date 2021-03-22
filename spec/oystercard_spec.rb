require 'oystercard'

describe Oystercard do
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
 expect(oystercard.touch_in ).to eq(true)
   end

  it ' checks if the card has been touched out'do
  oystercard = Oystercard.new
  expect(oystercard.touch_out).to eq(false)
  end
 it 'raises an error if the amount in the card is less than £1' do
   oystercard = Oystercard.new
   expect{ oystercard.touch_in }.to raise_error 'insufficient balance'
  end
 end
