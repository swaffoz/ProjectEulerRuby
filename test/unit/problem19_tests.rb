require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem19'

class TestProblem19 < Minitest::Test
  def setup
    @problem19 = Problem19.new
  end
  
  def test_solution_answer
    assert_equal 171, @problem19.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem19.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 19 took #{max_time*1000}ms"
  end
end