class RPS

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def rock_wins
    if @hand1 == @hand2
      return "It's a draw"
    elsif @hand1 == "rock" && @hand2 == "scissors"
      return "Hand 1 wins"
    elsif @hand1 == "rock" && @hand2 == "paper"
      return "Hand 2 wins"
    end
  end

  # def @hand2
  #   return @@hand2 < @@hand1
  # end


end
