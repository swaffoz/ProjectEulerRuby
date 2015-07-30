require 'prime'

class Problem7 < ProjectEuler::Problem
  def solve 
    Prime.first(10001).last
  end
end