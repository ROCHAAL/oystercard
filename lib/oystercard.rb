class Oystercard

  MAXIMUM_BALANCE = 10

attr_reader :balance

def initialize
    @balance = 0
end

def top_up(amount)
  fail 'Maximum balance of 20 exceeded' if amount + balance > MAXIMUM_BALANCE
  @balance += amount
end

def deduct(amount)
end
end
