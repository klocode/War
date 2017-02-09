require 'minitest/autorun'
require_relative 'deck'


class DeckTest < MiniTest::Test

  def test_deck_has_52_cards
    assert Deck.new.cards.count == 52
  end

  def test_deck_has_13_each_suit
    assert Deck.new.cards.select {|card| card.suit == "heart"}.count == 13, Deck.new.cards.select {|card| card.suit == "heart"}.count 
  end

  def test_decks_are_shuffled
    deck1 = Deck.new
    deck2 = Deck.new
    assert deck1.cards[0] != deck2.cards[0]
    assert deck1.cards[1] != deck2.cards[1]
    assert deck1.cards[2] != deck2.cards[2]
    assert deck1.cards[3] != deck2.cards[3]
  end

end
