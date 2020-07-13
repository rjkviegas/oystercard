# Uninitialized constant Oystercard (NameError)
# ./spec/oystercard_spec.rb:2:in `<top (required)>'
# line 2
# Create class file oystercard.rb and create class Oystercard, link to spec file
# try to make instance of Oystercard in irb, oystercard.balance
# create initialize method with default balance
# create attr_reader :balance
require "oystercard"

describe Oystercard do
  it "creates an oystercard" do
    expect(Oystercard.new).to be_a(Oystercard)
  end

  it "has a starting balance of 0" do
    expect(subject.balance).to eq 0
  end

  describe "#top_up()" do
    let(:oyster) {Oystercard.new(85)}
    it "can top_up" do
      expect(oyster.top_up(5)).to eq oyster.balance
    end

    it "cannot top up past upper_limit" do
      expect{ oyster.top_up(10) }.to raise_error "Balance cannot exceed £#{Oystercard::UPPER_LIMIT}"
    end
  end

  describe "#deduct()" do
    let(:oyster) {Oystercard.new(85)}
    it "can deduct" do
      expect(oyster.deduct(5)).to eq oyster.balance
    end
  end

  describe "#in_journey?" do
    let(:oyster) {Oystercard.new}
    it "can touch in" do
      oyster.touch_in
      expect(oyster.in_journey?).to be true
    end

    it "can touch out" do
      oyster.touch_out
      expect(oyster.in_journey?).to be false
    end
  end

end

# initialize an instance of the Oystercard class, balance = 0/default
# call top_up(with an argument) on instance of Oystercard (oystercard)
# FAIL
# call balance on oystercard and check balance has increased to argument

# initialize an instance of the Oystercard class, balance = 0
# call top_up(>90) on oystercard
# FAIL
# Write unit test using raise error
# create constant upper_limit = 90 for balance
# implement limit in the top_up method, include upper_limit value

# initialize with 10
# call deduct(5) on instance
# FAIL
# Write unit test
# call deduct(with an argument) on oystercard
# call balance on oystercard and check balance has decreased to argument

# call oystercard.touch_in
# FAIL
# Write unit test
# Write in_journey? method with in_journey as instance variable
# Write touch_in method to change in_journey == true
# Write touch_out method to change in_journey == false
# touch_in should respond in_journey == true if has been touched in
# touch_out should respond in_journey == false if has been touched out
