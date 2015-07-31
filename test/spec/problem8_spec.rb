require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem8'

describe Problem8 do
  before do
    @problem8 = Problem8.new
  end

  describe "when asked to solve Project Euler Problem 8" do
    it "must return the correct answer" do
      @problem8.solve.must_equal 23514624000
    end
  end
end