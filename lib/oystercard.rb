class Oystercard
  attr_reader :balance :in_journey
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

  end

end
