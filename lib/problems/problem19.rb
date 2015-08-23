require 'date'

class Problem19 < ProjectEuler::Problem
  def solve 
    first_sundays = 0

    (1901..2000).each do |year|
    	(1..12).each do |month|
    		first_sundays += 1 if Date.new(year, month, 1).wday == 0
    	end
    end

    first_sundays
  end
end