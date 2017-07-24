require'./lib/card'

class Guess
  attr_reader :card,
              :response
  def initialize(response, card)
    @card = card
    @response = response
  end

  def correct?
    if response == "Juneau"
      true
    end
  end

  def feedback
    if correct? == true
      p "Correct!"
    end
  end

end
