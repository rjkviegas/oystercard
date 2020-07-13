class Oystercard
  attr_reader :balance
  
  UPPER_LIMIT = 90
  MINIMUM_FARE = 1

  def initialize(balance = 0)
    @balance = balance
  end

  def top_up(amount)
    fail "Balance cannot exceed £#{UPPER_LIMIT}" if (@balance += amount) > UPPER_LIMIT
    balance
  end

  def in_journey?
    @in_use
  end

  def empty?
    balance < MINIMUM_FARE
  end

  def touch_in
    fail "Balance is too low to travel" if empty?
    @in_use = true
  end

  def touch_out
    deduct(MINIMUM_FARE)
    @in_use = false
  end

  private

  def in_use
    @in_use
  end

  def deduct(amount)
    @balance -= amount
  end

end
