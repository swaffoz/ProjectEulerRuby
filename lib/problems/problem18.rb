class Problem18 < ProjectEuler::Problem
  def solve 
    file = File.open('./lib/data/problem18_data.txt', 'rb')
    triangle_str = file.read
    file.close

    triangle = triangle_str.each_line.map { |line| line.split.map(&:to_i) }

    (triangle.length - 2).downto(0) do |y|
    	triangle[y].length.times do |x|
    		triangle[y][x] += [triangle[y+1][x], triangle[y+1][x+1]].max
    	end
    end

    triangle[0][0]
  end
end