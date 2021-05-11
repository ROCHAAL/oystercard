class Oystercard

  MAXIMUM_BALANCE = 10
  MINIMUM_BALANCE = 1

attr_reader :balance, :amount, :entry_station, :exit_station

  def initialize
    @balance = 0
    @amount = amount
    @entry_station = []
    @exit_station = []

  end

  def top_up(amount)
    fail ' Maximum balance of 20 exceeded ' if amount + balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def deduct(taken_amount)
    @balance = @balance -  taken_amount
  end

  def in_journey?
    true
  end

  def touch_in(station)

    @entry_station.push(station)

    if @balance < MINIMUM_BALANCE
      raise 'insufficient balance'
    elsif @balance >= MAXIMUM_BALANCE
      true
    end
  end

  def touch_out(exit_station)

    @exit_station.push(exit_station)

    deduct(MINIMUM_BALANCE)
    @in_journey = false

  end

end
