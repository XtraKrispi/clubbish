class GameLogic
  def self.trick_winner cards, trump_suit
    round_1_winner = winner(cards[0], cards[1], trump_suit)
    round_2_winner = winner(round_1_winner, cards[2], trump_suit)
    round_3_winner = winner(round_2_winner, cards[3], trump_suit)
    
    round_3_winner
  end
  
  def self.winner card1, card2, trump_suit
    card = nil
    if card1.suit == trump_suit
      if card2.suit == trump_suit
        card = card1 if card1.trump_ranking < card2.trump_ranking
        card = card2 if card2.trump_ranking < card1.trump_ranking
      else
        card = card1
      end
    else
      if card2.suit == trump_suit
        card = card2
      elsif card2.suit == card1.suit
        card = card1 if card1.non_trump_ranking < card2.non_trump_ranking
        card = card2 if card2.non_trump_ranking < card1.non_trump_ranking
      else
        card = card1
      end
    end
    
    card
  end
end
