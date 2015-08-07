require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem12'

class TestProblem12 < Minitest::Test
  def setup
    @problem12 = Problem12.new
  end
  
  def test_solution_answer
    assert_equal 76576500, @problem12.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem12.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 12 took #{max_time*1000}ms"
  end
end