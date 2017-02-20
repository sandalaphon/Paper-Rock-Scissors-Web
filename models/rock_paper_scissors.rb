class RockPaperScissors
attr_accessor :hand1, :hand2
def initialize(hand1, hand2)
@hand1=hand1
@hand2=hand2
end

  def game
    case @hand1
      when 'rock'
        @hand2=='paper' ? "Hand 2 wins: Paper covers Rock" : "Hand 1 wins: Rock blunts Scissors"
     
      when 'paper'
        @hand2=='rock' ? "Hand 1 wins: Paper covers Rock" : "Hand 2 wins: Scissors cuts Paper"
     
      when'scissors'
        @hand2=='rock' ? "Hand 2 wins: Rock blunts Scissors" : "Hand 1 wins: Scissors cuts Paper"
      end
  end

end