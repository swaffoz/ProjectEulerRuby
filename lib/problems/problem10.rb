class Problem10 < ProjectEuler::Problem
  def solve 
    sum = 0
    
    Prime.each do |n| 
      break if n >= 2_000_000
      sum += n
    end
    
    sum
  end
end