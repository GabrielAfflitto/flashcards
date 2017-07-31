require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/cardgenerator'

class CardGeneratorTest < Minitest::Test
  def test_it_exists
    filename = "cards.txt"
    cards = CardGenerator.new(filename)

    assert_instance_of CardGenerator, cards
  end

  def test_that_cards_returns_an_array
    filename = "cards.txt"
    generator = CardGenerator.new(filename)

    assert_instance_of Array, generator.cards
    assert_equal 4, generator.cards.count
    assert_instance_of Card, generator.cards.first
  end

  

end
