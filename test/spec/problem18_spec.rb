require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem18'

describe Problem18 do
  before do
    @problem18 = Problem18.new
  end

  describe "when asked to solve Project Euler Problem 18" do
    it "must return the correct answer" do
      @problem18.solve.must_equal 1074
    end
  end
end