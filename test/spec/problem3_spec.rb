require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem3'

describe Problem3 do
  before do
    @problem3 = Problem3.new
  end

  describe "when asked to solve Project Euler Problem 3" do
    it "must return the correct answer" do
      @problem3.solve.must_equal 6857
    end
  end
end