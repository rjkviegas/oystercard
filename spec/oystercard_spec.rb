# Uninitialized constant Oystercard (NameError)
# ./spec/oystercard_spec.rb:2:in `<top (required)>'
# line 2
# Create class file oystercard.rb and create class Oystercard, link to spec file
# try to make instance of Oystercard in irb, oystercard.balance
# create initialize method with default balance
# create attr_reader :balance
require 'oystercard'

describe Oystercard do
  it "creates an oystercard" do
    expect(Oystercard.new).to be_a(Oystercard)
  end

  it "has a starting balance of 0" do
    expect(subject.balance).to eq 0
  end

  describe '#top_up()' do
    it 'can top_up' do
      expect(subject.top_up(5)).to eq subject.balance
    end
  end
  
end

# initialize an instance of the Oystercard class, balance = 0/default
# call top_up(with an arguement) on instance of Oystercard (oystercard)
# FAIL
# call balance on oystercard and check balance has increased to argument
