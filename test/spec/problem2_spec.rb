require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem2'

describe Problem2 do
  before do
    @problem2 = Problem2.new
  end

  describe "when asked to solve Project Euler Problem 2" do
    it "must return the correct answer" do
      @problem2.solve.must_equal 4613732
    end
  end
end