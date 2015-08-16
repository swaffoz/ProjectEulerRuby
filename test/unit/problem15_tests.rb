require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem15'

class TestProblem15 < Minitest::Test
  def setup
    @problem15 = Problem15.new
  end
  
  def test_solution_answer
    assert_equal 137846528820, @problem15.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem15.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 15 took #{max_time*1000}ms"
  end
end