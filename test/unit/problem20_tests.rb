require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem20'

class TestProblem20 < Minitest::Test
  def setup
    @problem20 = Problem20.new
  end
  
  def test_solution_answer
    assert_equal 648, @problem20.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem20.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 20 took #{max_time*1000}ms"
  end
end