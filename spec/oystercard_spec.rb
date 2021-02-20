require 'oystercard'
describe Oystercard do
  it ' has a balance'do
    oystercard = Oystercard.new
    expect(oystercard.balance).to eq(0)
  end

  it 'adds money in the card' do
  oystercard = Oystercard.new
  oystercard.top_up(3)
  expect(oystercard.top_up(3)).to eq(1)
end
end
