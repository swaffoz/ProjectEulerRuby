require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem14'

class TestProblem14 < Minitest::Test
  def setup
    @problem14 = Problem14.new
  end
  
  def test_solution_answer
    assert_equal 837799, @problem14.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem14.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 14 took #{max_time*1000}ms"
  end
end