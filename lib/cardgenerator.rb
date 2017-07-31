  require './lib/card'

class CardGenerator
  attr_reader :cards
  def initialize(filename)
    @cards = []
    shovel_cards(filename)
  end

  def shovel_cards(filename)
    File.open(filename).each do |line|
      question = line.chomp.split(",").first
      answer = line.chomp.split(",").last
      @cards << Card.new(question, answer)
    end
  end

  

end
