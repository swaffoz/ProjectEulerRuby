require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem20'

describe Problem20 do
  before do
    @problem20 = Problem20.new
  end

  describe "when asked to solve Project Euler Problem 20" do
    it "must return the correct answer" do
      @problem20.solve.must_equal 648
    end
  end
end