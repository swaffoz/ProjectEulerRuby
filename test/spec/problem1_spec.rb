require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem1'

describe Problem1 do
  before do
    @problem1 = Problem1.new
  end

  describe "when asked to solve Project Euler Problem 1" do
    it "must return the correct answer" do
      @problem1.solve.must_equal 233168
    end
  end
end