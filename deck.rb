require_relative 'card'

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    get_cards
    cards.shuffle!
  end

#each to loop
  def get_cards
    suit = %w(diamond heart club spade)
    face = %w(2 3 4 5 6 7 8 9 10 J Q K A)
          suit.each do |s|
            face.each do |f|
              cards << Card.new(s,f)
            end
          end
  end

end

deck = Deck.new
puts deck.inspect
