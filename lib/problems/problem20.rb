class Problem20 < ProjectEuler::Problem
  def factorial n
  	if n > 0
  		(1..n).inject(1, :*)
  	else 
  		n
  	end
  end

  def solve 
    factorial(100).to_s.split('').inject(0) { |sum, i| sum += i.to_i }
  end
end