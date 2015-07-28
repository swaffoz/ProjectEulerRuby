require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem5'

class TestProblem5 < Minitest::Test
  def setup
    @problem5 = Problem5.new
  end
  
  def test_solution_answer
    assert_equal 232792560, @problem5.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem5.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 5 took #{max_time*1000}ms"
  end
end