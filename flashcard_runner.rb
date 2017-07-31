require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/guess'
require './lib/cardgenerator'
require 'pry'

filename = "cards.txt"
cards = CardGenerator.new(filename).cards

deck = Deck.new(cards)

round = Round.new(deck)

round.start
