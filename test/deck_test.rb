require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'


class DeckTest < Minitest::Test
  def test_does_it_exist
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    assert_instance_of Deck, deck
  end

  def test_does_it_have_cards
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    assert_equal cards, deck.cards
  end

  def test_how_many_cards
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    assert_equal 3, deck.count
  end

  def test_sort_works
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Ace", "Spades")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Jack", "Clubs")
    card_5 = Card.new("Ace", "Diamonds")
    cards = [card_1, card_2, card_3, card_4, card_5]
    deck = Deck.new(cards)

    assert_equal [card_1, card_3, card_4, card_5, card_2], deck.sort
  end
end
