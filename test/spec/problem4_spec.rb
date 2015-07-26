require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem4'

describe Problem4 do
  before do
    @problem4 = Problem4.new
  end

  describe "when asked to solve Project Euler Problem 4" do
    it "must return the correct answer" do
      @problem4.solve.must_equal 906609
    end
  end
end