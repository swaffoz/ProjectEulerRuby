require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem17'

describe Problem17 do
  before do
    @problem17 = Problem17.new
  end

  describe "when asked to solve Project Euler Problem 17" do
    it "must return the correct answer" do
      @problem17.solve.must_equal 21124
    end
  end
end