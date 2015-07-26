require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem4'

class TestProblem4 < Minitest::Test
  def setup
    @problem4 = Problem4.new
  end
  
  def test_solution_answer
    assert_equal 906609, @problem4.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem4.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 4 took #{max_time*1000}ms"
  end
end