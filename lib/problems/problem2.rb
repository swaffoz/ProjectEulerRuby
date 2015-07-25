class Problem2 < ProjectEuler::Problem
  def solve 
    arr = [0, 1]
    arr << arr[-2] + arr[-1] while arr.last < 4000000
    arr.delete_if &:odd?

    sum = 0
    arr.each{|a| sum += a if a % 2 == 0}
    sum
  end
end