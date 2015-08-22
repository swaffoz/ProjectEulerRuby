require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem17'

class TestProblem17 < Minitest::Test
  def setup
    @problem17 = Problem17.new
  end
  
  def test_solution_answer
    assert_equal 21124, @problem17.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem17.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 17 took #{max_time*1000}ms"
  end
end