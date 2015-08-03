require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem9'

class TestProblem9 < Minitest::Test
  def setup
    @problem9 = Problem9.new
  end
  
  def test_solution_answer
    assert_equal 31875000, @problem9.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem9.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 9 took #{max_time*1000}ms"
  end
end