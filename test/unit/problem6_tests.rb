require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem6'

class TestProblem6 < Minitest::Test
  def setup
    @problem6 = Problem6.new
  end
  
  def test_solution_answer
    assert_equal 25164150, @problem6.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem6.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 6 took #{max_time*1000}ms"
  end
end