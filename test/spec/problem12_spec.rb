require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem12'

describe Problem12 do
  before do
    @problem12 = Problem12.new
  end

  describe "when asked to solve Project Euler Problem 12" do
    it "must return the correct answer" do
      @problem12.solve.must_equal 76576500
    end
  end
end