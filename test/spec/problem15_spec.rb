require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem15'

describe Problem15 do
  before do
    @problem15 = Problem15.new
  end

  describe "when asked to solve Project Euler Problem 15" do
    it "must return the correct answer" do
      @problem15.solve.must_equal 137846528820
    end
  end
end