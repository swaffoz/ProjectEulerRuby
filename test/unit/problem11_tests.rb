require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem11'

class TestProblem11 < Minitest::Test
  def setup
    @problem11 = Problem11.new
  end
  
  def test_solution_answer
    assert_equal 70600674, @problem11.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem11.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 11 took #{max_time*1000}ms"
  end
end