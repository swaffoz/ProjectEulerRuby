require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem16'

describe Problem16 do
  before do
    @problem16 = Problem16.new
  end

  describe "when asked to solve Project Euler Problem 16" do
    it "must return the correct answer" do
      @problem16.solve.must_equal 1366
    end
  end
end