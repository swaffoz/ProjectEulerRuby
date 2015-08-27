require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem22'

class TestProblem22 < Minitest::Test
  def setup
    @problem22 = Problem22.new
  end
  
  def test_solution_answer
    assert_equal 871198282, @problem22.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem22.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 22 took #{max_time*1000}ms"
  end
end