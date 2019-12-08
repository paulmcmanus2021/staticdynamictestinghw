require_relative('card_game.rb')
require_relative('card.rb')
require('minitest/autorun')
require('minitest/reporters')
require('pry')

MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CardGameTest < MiniTest::Test


  def test_check_for_ace__true
    card = Card.new("Hearts", 1)
    result = CardGame.check_for_ace(card)
    assert_equal(true, result)
  end

  def test_check_for_ace__false
    card = Card.new("Hearts", 2)
    result = CardGame.check_for_ace(card)
    assert_equal(false, result)
  end

  def test_highest_card
    card1 = Card.new("Spades", 3)
    card2 = Card.new("Spades", 4)
    result = CardGame.highest_card(card1, card2)
    assert_equal(card2, result)
  end

  def test_cards_total
    card1 = Card.new("Hearts",1)
    card2 = Card.new("Hearts",2)
    card3 = Card.new("Hearts",3)
    card4 = Card.new("Hearts",4)
    cards = [card1, card2, card3, card4]
    result = CardGame.cards_total(cards)
    assert_equal("You have a total of 10", result)
  end





end
