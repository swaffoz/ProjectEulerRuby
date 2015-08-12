require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem14'

describe Problem14 do
  before do
    @problem14 = Problem14.new
  end

  describe "when asked to solve Project Euler Problem 14" do
    it "must return the correct answer" do
      @problem14.solve.must_equal 837799
    end
  end
end