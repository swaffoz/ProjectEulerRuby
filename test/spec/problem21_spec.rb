require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem21'

describe Problem21 do
  before do
    @problem21 = Problem21.new
  end

  describe "when asked to solve Project Euler Problem 21" do
    it "must return the correct answer" do
      @problem21.solve.must_equal 31626
    end
  end
end