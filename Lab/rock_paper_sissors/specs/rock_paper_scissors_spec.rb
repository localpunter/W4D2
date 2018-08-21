require 'minitest/autorun'
require_relative '../models/rock_paper_scissors'

class TestRPS < Minitest::Test


  def test_rock_wins
    rps = RPS.new("rock", "paper")
    assert_equal("Hand 2 wins", rps.rock_wins)
  end

  # def test_hand2
  #   if hand2 < hand1
  #   end
  #   assert_equal(scissors, @rps.hand2)
  #
  # end




end
