class Problem4 < ProjectEuler::Problem
  def solve 
    palindrome = 0

    (100..999).each do |x|
    	(100..999).each do |y|
    		palindrome = x * y if (x * y).to_s == (x * y).to_s.reverse and (x * y) > palindrome
    	end
    end

    palindrome
  end
end