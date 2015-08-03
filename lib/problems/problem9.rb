class Problem9 < ProjectEuler::Problem
  def solve 
    a = (1..500).to_a.find do |a|
    	(1000 * (500 - a) % (1000 - a)).zero?
    end

    b = 1000 * (500 - a) / (1000 - a)

    c = 1000 - a - b

    a * b * c
  end
end