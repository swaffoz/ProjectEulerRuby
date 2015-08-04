require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem10'

describe Problem10 do
  before do
    @problem10 = Problem10.new
  end

  describe "when asked to solve Project Euler Problem 10" do
    it "must return the correct answer" do
      @problem10.solve.must_equal 142913828922
    end
  end
end