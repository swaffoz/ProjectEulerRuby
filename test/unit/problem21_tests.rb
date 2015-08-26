require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem21'

class TestProblem21 < Minitest::Test
  def setup
    @problem21 = Problem21.new
  end
  
  def test_solution_answer
    assert_equal 31626, @problem21.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem21.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 21 took #{max_time*1000}ms"
  end
end