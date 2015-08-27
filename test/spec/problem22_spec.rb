require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/matchers'
require './lib/problems/problem22'

describe Problem22 do
  before do
    @problem22 = Problem22.new
  end

  describe "when asked to solve Project Euler Problem 22" do
    it "must return the correct answer" do
      @problem22.solve.must_equal 871198282
    end
  end
end