class Oystercard
  attr_reader :balance
  
  UPPER_LIMIT = 90

  def initialize(balance = 0)
    @balance = balance
  end

  def top_up(amount)
    fail "Balance cannot exceed £#{UPPER_LIMIT}" if (@balance += amount) > UPPER_LIMIT
    balance
  end

  def deduct(amount)
    @balance -= amount
  end

  def in_journey?
    @in_use
  end

  def touch_in
    @in_use = true
  end

  def touch_out
    @in_use = false
  end

  private
  
  def in_use
    @in_use
  end

end
