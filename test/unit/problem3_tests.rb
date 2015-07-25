require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem3'

class TestProblem3 < Minitest::Test
  def setup
    @problem3 = Problem3.new
  end
  
  def test_solution_answer
    assert_equal 6857, @problem3.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem3.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 3 took #{max_time*1000}ms"
  end
end