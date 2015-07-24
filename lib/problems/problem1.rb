class Problem1 < ProjectEuler::Problem
  def solve 
    answer = 0
    (1...1000).collect { |number| answer += number if number % 3 == 0 or number % 5 == 0 }
    answer
  end
end