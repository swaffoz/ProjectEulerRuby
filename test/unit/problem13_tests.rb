require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem13'

class TestProblem13 < Minitest::Test
  def setup
    @problem13 = Problem13.new
  end
  
  def test_solution_answer
    assert_equal 5537376230, @problem13.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem13.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 13 took #{max_time*1000}ms"
  end
end