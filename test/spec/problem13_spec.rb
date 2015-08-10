require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem13'

describe Problem13 do
  before do
    @problem13 = Problem13.new
  end

  describe "when asked to solve Project Euler Problem 13" do
    it "must return the correct answer" do
      @problem13.solve.must_equal 5537376230
    end
  end
end