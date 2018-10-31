class Array
  
  def my_uniq
    unique_array = []
    self.each do |el|
      unique_array << el unless unique_array.include?(el) 
    end
    unique_array
  end
  
  def two_sum
    pairs_array = []
    self.each_index do |i|
      (i+1...self.length).each do |j|
        pairs_array << [i,j] if self[i] + self[j] == 0
      end
    end 
    pairs_array
  end
end


def my_transpose(array)
  results_array = Array.new(array.length) {Array.new(array.length)}
  array.each_index do |i|
    (0...array.length).each do |j|
      results_array[i][j] = array[j][i]
    end
  end 
  results_array
end

def stock_picker(array)
  best_days = []
  max = 0
  
  array.each_index do |i|
    (i+1...array.length).each do |j|
      current_price = array[j] - array[i]
      if current_price > max
        max = current_price
        best_days = [i+1, j+1]
      end
    end  
  end    
  best_days    
end