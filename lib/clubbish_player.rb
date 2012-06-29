class ClubbishPlayer < Player
  attr_accessor :current_trump
  def initialize params
    @current_trump = nil
    super params
  end
  
  def current_trump= new_trump
    @current_trump = new_trump
    adjust_sort_values!
  end
  
  private 
  
  def adjust_sort_values!
    unless @hand.nil?
      cardsOfSuit = @hand if @current_trump.nil?
      cardsOfSuit = @hand.select { |card| card.suit == @current_trump} unless @current_trump.nil?
      cardsOfSuit.each do |card|
        card.sort_ranking = 9 - card.trump_ranking unless @current_trump.nil?
        card.sort_ranking = 9 - card.non_trump_ranking if @current_trump.nil?
      end
    end
  end
end
