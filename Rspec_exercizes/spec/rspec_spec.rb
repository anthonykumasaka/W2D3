require 'rspec'

describe Array do
  describe "#my_uniq" do
    it 'removes duplicate elements' do
      expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
    end
    
    it 'does not use the uniq method' do
      array = [1,2,1,3,3]
      expect(array).not_to receive(:uniq)
      array.my_uniq
    end
  end
  
  describe "#two_sum" do
    it "returns the indices of two or more elements that sum to 0" do 
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end 
  end 
  
  describe "#my_transpose" do
    it "will convert between the row-oriented and column-oriented representations" do
      expect(my_transpose([[0, 1, 2], [3, 4, 5], [6, 7, 8]])).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
    
    it "does not use the transpose method" do
      array = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
      expect(array).not_to receive(:transpose)
      my_transpose(array)
    end
  end
  
  describe "#stock_picker" do 
    it "will pick the best day to buy and the best day to sell in a given a length of time" do
      expect(stock_picker([5, 4, 0, 2, 10])).to eq([3, 5])
    end 
  end
end
      
