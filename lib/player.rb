class Player
  attr_accessor :hand
  attr_reader :player_name
  
  def initialize params
    params = {
      :player_name => "Unknown Player",
      :hand => []
    }.merge(params)
    
    @player_name = params[:player_name]
    @hand = params[:hand]
  end
  
  def organize_hand!
    @hand = organize_hand
  end

  def organize_hand
    new_hand = []
    @hand.collect{|card| card.suit}.uniq.sort {|a,b| a.to_s <=> b.to_s}.each do |suit|
      cards_in_suit = @hand.select { |card| card.suit == suit}
      new_hand = new_hand + cards_in_suit.sort { |a,b| a.sort_ranking <=> b.sort_ranking}
    end
    new_hand
  end
end
