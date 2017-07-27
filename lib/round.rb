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

  def start
    puts "Welcome! You're playing with 4 cards."
    puts "-------------------------------------"
    start_refactor_loop
    puts "****** Game Over! ******"
    puts "You had #{number_correct} correct guesses out of #{deck.count} for a score of #{percent_correct}%."
  end

  def start_refactor_loop
    until guesses.count == deck.count
      puts "This is card number #{@index + 1} out of #{deck.count}"
      puts "Question: #{current_card.question}"
      user_input = gets.chomp
      record_guess(user_input).feedback
    end
  end

end
