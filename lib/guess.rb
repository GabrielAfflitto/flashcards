require'./lib/card'

class Guess
  attr_reader :card,
              :response
  def initialize(response, card)
    @card = card
    @response = response
  end

  def correct?
    if response == card.answer
      true
    end
  end

  def feedback
    if correct? == true
      p "Correct!"
    else
      p "Incorrect!"
    end
  end

end
