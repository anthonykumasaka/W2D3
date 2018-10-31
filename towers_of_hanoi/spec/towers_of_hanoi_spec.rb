require 'towers_of_hanoi'

describe TowersOfHanoi do
  subject(:game) { TowersOfHanoi.new }
  describe "#initialize" do
    it "initializes a towers instance variable" do
      expect(:game.towers).to eq([[3,2,1],[],[]])
    end
    
    it "initializes with a player" do
      expect(:game.player).to be(String)
    end 
      
  end
end



