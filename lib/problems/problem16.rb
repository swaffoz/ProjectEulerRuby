class Problem16 < ProjectEuler::Problem
  def solve 
    (2**1000).to_s.chars.map(&:to_i).inject{ |sum, i| sum + i }
  end
end