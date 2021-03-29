class Oystercard

  MAXIMUM_BALANCE = 10
  MINIMUM_BALANCE = 1

attr_reader :balance, :amount, :entry_station

  def initialize
    @balance = 0
    @amount = amount
    @entry_station = entry_station

  end

  def top_up(amount)
    fail ' Maximum balance of 20 exceeded ' if amount + balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def deduct(taken_amount) # is the input(argument) necessary here?
    @balance = @balance -  taken_amount
  end

  def in_journey?
    true
  end

  def touch_in(station)
    if @balance < MINIMUM_BALANCE #
      raise 'insufficient balance'
    elsif @balance >= MAXIMUM_BALANCE  # initially I was putting this argument first, then if is true it will never read the elsif
      true
    end
  end

  def touch_out
    deduct(MINIMUM_BALANCE)
    @in_journey = false

  end

end


#(Related to touch_in method) To make the test pass, I just changed the ordem of lines 29 and 31 .So the part inside the if will always execute, if the balance is lower than MAXIMUM_BALANCE - even if it's 0 -
# which means the part inside the elsif will never execute if @balance is less than 10 (the elseif part won't be considered at all, if the if condition is true!)
