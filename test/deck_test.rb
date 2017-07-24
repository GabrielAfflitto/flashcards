require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require 'pry'

class GuessTest < Minitest::Test
  def test_it_exists
    guess = Guess.new("Juneau", card)

    assert_instance_of Guess,
  end


end
