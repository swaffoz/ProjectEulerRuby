class Problem22 < ProjectEuler::Problem
  def convert word
    total = 0
    word.each_byte do |i|
      total += i - 64
    end
    total
  end

  def solve
    file = File.open('./lib/data/problem22_data.txt', 'rb')
    names = eval("[" + file.gets + "]").sort
    file.close

    total = 0
    names.each_with_index do |name, i|
      total += convert(name) * (i + 1)
    end

    total
  end
end