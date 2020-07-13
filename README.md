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






touch_out to reduce balance by minimum fare
 
 Arrange: balance > minimum fare
 Act: oyster.touch_out
 Assert: balance -= minimum fare