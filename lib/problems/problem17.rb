require 'humanize'

class Problem17 < ProjectEuler::Problem
  def solve 
    # The humanize gem gets us the word form of the number, the regex removes any dashes or whitespace
    (1..1000).inject(0) { |sum, i| sum += i.humanize.gsub(/(-|\s)/, "").length }
  end
end