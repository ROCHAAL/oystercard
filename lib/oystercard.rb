class Oystercard

  MAXIMUM_BALANCE = 10
  MINIMUM_BALANCE = 1

attr_reader :balance, :amount

def initialize
    @balance = 0
    @amount = amount

end

def top_up(amount)
  fail ' Maximum balance of 20 exceeded ' if amount + balance > MAXIMUM_BALANCE
  @balance += amount



end

def deduct(taken_amount) # is the input(argument) necessary here?
  @balance -= taken_amount
end

def in_journey?
  true
end

def touch_in

   if @balance <= MAXIMUM_BALANCE
      true
   elsif @balance < MINIMUM_BALANCE
     raise 'insufficient balance'
   end
end

def touch_out
  false
end

end
