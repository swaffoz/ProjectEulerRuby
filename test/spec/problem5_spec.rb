require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem5'

describe Problem5 do
  before do
    @problem5 = Problem5.new
  end

  describe "when asked to solve Project Euler Problem 5" do
    it "must return the correct answer" do
      @problem5.solve.must_equal 232792560
    end
  end
end