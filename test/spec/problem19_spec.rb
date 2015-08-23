require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem19'

describe Problem19 do
  before do
    @problem19 = Problem19.new
  end

  describe "when asked to solve Project Euler Problem 19" do
    it "must return the correct answer" do
      @problem19.solve.must_equal 171
    end
  end
end