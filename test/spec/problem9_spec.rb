require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem9'

describe Problem9 do
  before do
    @problem9 = Problem9.new
  end

  describe "when asked to solve Project Euler Problem 9" do
    it "must return the correct answer" do
      @problem9.solve.must_equal 31875000
    end
  end
end