require 'minitest/autorun'
require 'minitest/pride'
# require 'cards.txt'
require 'pry'
require './flashcard_runner'

class CardGeneratorTest < Minitest::Test
  def test_it_exists
    filename = "cards.txt"
    cards = CardGenerator.new(filename).cards

    assert_instance_of CardGenerator, cards
  end


end
