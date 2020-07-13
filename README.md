## Oyster Card
### Specifications

```
In order to keep using public transport
As a customer
I want to add money to my card

In order to protect my money from theft or loss
As a customer
I want a maximum limit (of £90) on my card

In order to pay for my journey
As a customer
I need my fare deducted from my card

In order to get through the barriers.
As a customer
I need to touch in and out.

In order to pay for my journey
As a customer
I need to have the minimum amount (£1) for a single journey.

In order to pay for my journey
As a customer
When my journey is complete, I need the correct amount deducted from my card
```


|   Object    |   Methods   |
| ----------- | ----------- |
|  Oystercard |   balance, top_up(), deduct(), in_use, in_journey?, empty?, touch_in, touch_out,    |

In order to pay for my journey
As a customer
I need to know where I've travelled from

 Write up a plan for how you will interact with your code and manually test in IRB
 Using a double, write a test that expects the card to remember the entry station after the touch in
 Update the touch_in method to accept the entry station
 Update existing tests to pass a station to the touch_in method - you may need to declare your double in a let statement at the top of your describe block
 Expose entry_station instance variable using an attribute reader
 Make the card forget the entry station on touch out by setting it to nil
 When your tests are all green, refactor to remove the in_journey variable. Rewrite the in_journey? method to infer its status based on whether or not there is an entry station


 
 Arrange: 
 Act: 
 Assert: 