require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem16'

class TestProblem16 < Minitest::Test
  def setup
    @problem16 = Problem16.new
  end
  
  def test_solution_answer
    assert_equal 1366, @problem16.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem16.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 16 took #{max_time*1000}ms"
  end
end