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



end
