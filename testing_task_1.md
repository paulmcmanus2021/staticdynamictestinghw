### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

#not_camel_case
  def checkforAce(card)
#should be card.value == 1
    if card.value = 1
      return true
    else
      return false
    end
  end
#dif not def.
#missing comma between parameters
  dif highest_card(card1 card2)
  if card1.value > card2.value
#card not card1
    return card
  else
    return card2
  end
end
#extra end. One for ending if loop, one for ending method.
end

#total isn't set to = anything

def self.cards_total(cards)
  total
  for card in cards
#value is set to attr_reader, unable to be updated.
    total += card.value
#total needs #{}
    return "You have a total of" + total
  end
end
#missing end for class

```
