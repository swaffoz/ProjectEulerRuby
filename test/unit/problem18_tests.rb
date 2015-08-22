require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem18'

class TestProblem18 < Minitest::Test
  def setup
    @problem18 = Problem18.new
  end
  
  def test_solution_answer
    assert_equal 1074, @problem18.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem18.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 18 took #{max_time*1000}ms"
  end
end