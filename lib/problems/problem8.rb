class Problem8 < ProjectEuler::Problem
  def solve 
    file = File.open('./lib/data/problem8_data.txt', 'rb')
    number = file.read.split('').map(&:to_i)
    file.close
    
    max = 0

    (0..number.length-13).each do |x|
    	product = 1

    	(x..x+12).each do |y|
    		product *= number[y]
    	end

    	max = product > max ? product : max 
    end

    max
  end
end