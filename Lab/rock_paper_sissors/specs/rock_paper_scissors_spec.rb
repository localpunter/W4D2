require 'minitest/autorun'
require_relative '../models/rock_paper_scissors'

class TestRPS < Minitest::Test


  def test_rock
    rps = RPS.new("rock", "scissors")
    assert_equal("Hand 1 wins", rps.rock)
  end

  def test_paper
    rps = RPS.new("rock", "paper")
    assert_equal("Hand 2 wins", rps.paper)
  end

  def test_scissors
    rps = RPS.new("scissors", "paper")
    assert_equal("Hand 1 wins", rps.scissors)
  end


  # def test_hand2
  #   if hand2 < hand1
  #   end
  #   assert_equal(scissors, @rps.hand2)
  #
  # end




end
