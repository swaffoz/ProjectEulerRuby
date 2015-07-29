class Problem6 < ProjectEuler::Problem
  def solve 
    sumOfSquares = squareOfSums = 0

    (1..100).map {|x| sumOfSquares += x**2 }
    (1..100).map {|y| squareOfSums += y }

    squareOfSums *= squareOfSums

    (sumOfSquares - squareOfSums).abs
  end
end