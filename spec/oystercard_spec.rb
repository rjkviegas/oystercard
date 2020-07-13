require "oystercard"

describe Oystercard do
  it "creates an oystercard" do
    expect(Oystercard.new).to be_a(Oystercard)
  end

  it "has a default balance" do
    expect(Oystercard.new.balance).to eq 0
  end

  describe "#top_up()" do
    let(:oyster) {Oystercard.new(85)}
    it "increases the balance" do
      expect(oyster.top_up(5)).to eq oyster.balance
    end

    it "cannot increase balance over £#{Oystercard::UPPER_LIMIT}" do
      expect{ oyster.top_up(10) }.to raise_error "Balance cannot exceed £#{Oystercard::UPPER_LIMIT}"
    end
  end
=begin
  describe "#deduct()" do
    let(:oyster) {Oystercard.new(85)}
    it "decreases the balance" do
      expect(oyster.deduct(5)).to eq oyster.balance
    end
  end
=end

  describe "#in_journey?" do
    let(:oyster) {Oystercard.new(10)}
    it "touch in results in in_journey? returning true" do
      oyster.touch_in
      expect(oyster.in_journey?).to be true
    end

    it "touch out results in in_journey? returns false" do
      oyster.touch_out
      expect(oyster.in_journey?).to be false
    end
  end

  describe "#touch_in" do
    it "error thrown when balance is less than £#{Oystercard::MINIMUM_FARE}" do
    oyster = Oystercard.new(Oystercard::MINIMUM_FARE - 1)
    expect{ oyster.touch_in }.to raise_error "Balance is too low to travel"
    end 
  end

  describe "#touch_out" do
    it "balance reduced by £#{Oystercard::MINIMUM_FARE}" do
      oyster = Oystercard.new(Oystercard::MINIMUM_FARE * 2)
      expect { oyster.touch_out }.to change { oyster.balance }.by (-Oystercard::MINIMUM_FARE)
    end
  end

end

