

class CardGenerator
  File.open("cards.txt").each do |line|
    puts line
  end

end
