
require_relative "card"

class Deck
  attr_reader :deck, :suits, :card_values
  def initialize
    @deck = []
    @suits = [:club, :spade, :heart, :diamond]
    @card_values = (1..13).to_a
  end
  
  def populate
    @suits.each do |suit|
      @card_values.each do |value|
        @deck << Card.new(suit, value)
      end
    end
    @deck
  end
  
  def shuffle 
    @deck = @deck.shuffle 
  end
  
  
  
end