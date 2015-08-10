class Problem13 < ProjectEuler::Problem
  def solve 
    file = File.open('./lib/data/problem13_data.txt', 'rb')
    numbers = file.read
    file.close
    
    sum = numbers.split.inject(0){ |sum, value| sum + value.to_i }
    
    first_nine_digits = sum.to_s[0..9].to_i
  end
end