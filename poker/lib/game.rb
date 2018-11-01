require_relative 'deck'
require_relative 'player'
require_relative 'card'
require_relative 'hand'

class Game
  attr_reader :num_players, :players, :deck
  def initialize(num_players)
    @num_players = num_players
    @players = []
    @deck = []
  end
  
  def setup
    #initiaizes players in array
    @players = []
    num_players.times do |name|
      puts "What is your name Player #{name + 1}"
      player_name = gets.chomp
      @players << Player.new(player_name)
    end
    # makes deck
    @deck = Deck.new
  end
  
  def play
    setup
    
    until won?
      play_turn
      
    end
    
    
    
  end
    
end

