require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem6'

describe Problem6 do
  before do
    @problem6 = Problem6.new
  end

  describe "when asked to solve Project Euler Problem 6" do
    it "must return the correct answer" do
      @problem6.solve.must_equal 25164150
    end
  end
end