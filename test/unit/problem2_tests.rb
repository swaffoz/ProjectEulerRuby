require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem2'

class TestProblem2 < Minitest::Test
  def setup
    @problem2 = Problem2.new
  end
  
  def test_solution_answer
    assert_equal 4613732, @problem2.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem2.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 2 took #{max_time*1000}ms"
  end
end