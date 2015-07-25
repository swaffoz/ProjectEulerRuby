require 'prime'

class Problem3 < ProjectEuler::Problem
  def solve 
    (600851475143.prime_division).max.max
  end
end