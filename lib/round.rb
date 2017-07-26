require './lib/guess'
require './lib/deck'
require 'pry'
class Round
  attr_reader :deck,
              :guesses,
              :index

  def initialize(deck)
    @deck = deck
    @guesses = []
    @index = 0
  end

  def current_card
    deck.cards[@index]
  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
    @index += 1
    @guesses.last
  end



end
