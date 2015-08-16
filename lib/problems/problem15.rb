class Problem15 < ProjectEuler::Problem
  def factorial n
  	if n > 0
  		(1..n).inject(1, :*)
  	else 
  		n
  	end
  end
  
  def solve 
    factorial(2 * 20) / factorial(20) ** 2
  end
end