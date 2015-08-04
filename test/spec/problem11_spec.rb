require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem11'

describe Problem11 do
  before do
    @problem11 = Problem11.new
  end

  describe "when asked to solve Project Euler Problem 11" do
    it "must return the correct answer" do
      @problem11.solve.must_equal 70600674
    end
  end
end