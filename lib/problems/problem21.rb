class Integer
  def factors() (1..self).select { |n| (self % n).zero? } end
  def sumOfFactors() self.factors[0...-1].inject(0, :+) end
	def amicableWith?(i) 
		self.sumOfFactors == i && 
		self == i.sumOfFactors && 
		self != i 
	end
end

class Problem21 < ProjectEuler::Problem
  def solve 
    amicableNums = {}
    sum = 0

    (1...10_000).each do |x|
    	amicableNums[x] = y = x.sumOfFactors
    	if x.amicableWith?(y) then sum += x end
    end
    
    sum
  end
end