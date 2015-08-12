class Problem14 < ProjectEuler::Problem
  def collatz n
  	n % 2 == 0 ? n/2 : 3*n + 1
  end
  
  def solve 
    longest_starting_number = 0
    max_length = 0

    (1..1_000_000).each do |starting_number|
    	length = 0

    	n = starting_number
    	while n != 1 do
    		n = collatz n
    		length += 1
    	end

    	if length > max_length 
    		max_length = length
    		longest_starting_number = starting_number
    	end
    end

    longest_starting_number
  end
end