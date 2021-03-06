require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'
# require './lib/guess'
require 'pry'

class DeckTest < Minitest::Test
  def test_it_exists
    deck = Deck.new("")

    assert_instance_of Deck, deck
  end

  def test_for_cards
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
    deck = Deck.new([card_1, card_2, card_3])

    assert_equal [card_1, card_2, card_3], deck.cards
    assert_instance_of Card, deck.cards.first
  end

  def test_the_count_is_3
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
    deck = Deck.new([card_1, card_2, card_3])

    assert_equal 3, deck.count
  end

end
