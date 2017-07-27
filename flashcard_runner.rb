require './lib/card'
require './lib/deck'
require './lib/round'


puts "Welcome! You're playing with 4 cards"
puts "Enter your name"

# name = gets.chomp
#
# puts name
cards = []
cards << Card.new("What is the capital of Alaska?", "Juneau")
cards << Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
# puts cards.last.question

deck = Deck.new(cards)

# puts deck.count

round = Round.new(deck)

round.start
