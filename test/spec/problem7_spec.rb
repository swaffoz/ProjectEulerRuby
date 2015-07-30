require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem7'

describe Problem7 do
  before do
    @problem7 = Problem7.new
  end

  describe "when asked to solve Project Euler Problem 7" do
    it "must return the correct answer" do
      @problem7.solve.must_equal 104743
    end
  end
end