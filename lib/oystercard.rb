class Oystercard
  attr_reader :balance
  UPPER_LIMIT = 90

  def initialize(balance = 0)
    @balance = balance
  end

  def top_up(amount)
    fail "Balance cannot exceed #{UPPER_LIMIT}" if (@balance += amount) > UPPER_LIMIT
    @balance += amount
  end

end
