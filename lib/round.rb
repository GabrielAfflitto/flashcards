require './lib/guess'
require './lib/deck'
require './lib/card'
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

  def number_correct
    counter = 0
    guesses.each do |guess|
      if guess.correct? == true
        counter += 1
      end
    end
    counter
  end

  def percent_correct
    f = number_correct.to_f / guesses.count.to_f
    f * 100.to_i
  end

end
