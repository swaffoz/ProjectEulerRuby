require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem8'

class TestProblem8 < Minitest::Test
  def setup
    @problem8 = Problem8.new
  end
  
  def test_solution_answer
    assert_equal 23514624000, @problem8.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem8.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 8 took #{max_time*1000}ms"
  end
end