require_relative('card_game.rb')
require_relative('card.rb')
require('minitest/autorun')
require('minitest/reporters')
require('pry')

MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CardGameTest < MiniTest::Test


  def test_check_for_ace__true
    card = Card.new("Hearts", 1)
    # (binding.pry here reveals card has been instantiated)
    result = check_for_ace(card)
    assert_equal(true, result)
  end

  def test_check_for_ace__false
    card = Card.new("Hearts", 2)
    # (binding.pry here reveals card has been instantiated)
    result = check_for_ace(card)
    assert_equal(false, result)
  end

  def test_highest_card
    card1 = Card.new("Spades", 3)
    card2 = Card.new("Spades", 4)
    # (binding.pry here reveals both cards have been instantiated)
    result = highest_card(card1, card2)
    assert_equal(card2, result)
  end

  def test_self_cards_total
    card1 = Card.new("Hearts",4)
    card2 = Card.new("Hearts",3)
    card3 = Card.new("Hearts",2)
    card4 = Card.new("Hearts",1)
    cards = [card1, card2, card3, card4]
    # (binding.pry here reveals all cards and cards array instantiated)
    result = self.cards_total(cards)
    assert_equal(10,result)
  end





end
