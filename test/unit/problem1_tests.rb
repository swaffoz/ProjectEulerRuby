require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem1'

class TestMeme < Minitest::Test
  def setup
    @problem1 = Problem1.new
  end
  
  def test_solution_answer
    assert_equal 233168, @problem1.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem1.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 1 took #{max_time*1000}ms"
  end
end
