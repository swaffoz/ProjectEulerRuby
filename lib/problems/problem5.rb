class Problem5 < ProjectEuler::Problem
  def solve 
    (1..20).inject(:lcm)
  end
end