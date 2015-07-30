require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem7'

class TestProblem7 < Minitest::Test
  def setup
    @problem7 = Problem7.new
  end
  
  def test_solution_answer
    assert_equal 104743, @problem7.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem7.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 7 took #{max_time*1000}ms"
  end
end