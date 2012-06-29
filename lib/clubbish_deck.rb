class ClubbishDeck < Deck
  def initialize
    super
  end
  
  def make_cards
    suits = ["Hearts", "Spades", "Diamonds", "Clubs"]
    values = Array.new
    values[0] = {:long_name=>"Ace", :short_name=>"A", :sort_ranking => 8, :non_trump_ranking => 1, :trump_ranking => 3, :non_trump_points => 11, :trump_points => 11}
    values[1] = {:long_name=>"Seven", :short_name=>"7", :sort_ranking => 1,  :non_trump_ranking => 8, :trump_ranking => 8, :non_trump_points => 0, :trump_points => 0}
    values[2] = {:long_name=>"Eight", :short_name=>"8", :sort_ranking => 2,  :non_trump_ranking => 7, :trump_ranking => 7, :non_trump_points => 0, :trump_points => 0}
    values[3] = {:long_name=>"Nine", :short_name=>"9", :sort_ranking => 3,  :non_trump_ranking => 6, :trump_ranking => 2, :non_trump_points => 0, :trump_points => 14}
    values[4] = {:long_name=>"Ten", :short_name=>"10", :sort_ranking => 7,  :non_trump_ranking => 2, :trump_ranking => 4, :non_trump_points => 10, :trump_points => 10}
    values[5] = {:long_name=>"Jack", :short_name=>"J", :sort_ranking => 4,  :non_trump_ranking => 5, :trump_ranking => 1, :non_trump_points => 2, :trump_points => 20}
    values[6] = {:long_name=>"Queen", :short_name=>"Q", :sort_ranking => 5,  :non_trump_ranking => 4, :trump_ranking => 5, :non_trump_points => 3, :trump_points => 3}
    values[7] = {:long_name=>"King", :short_name=>"K", :sort_ranking => 6,  :non_trump_ranking => 3, :trump_ranking => 6, :non_trump_points => 4, :trump_points => 4}
    
    suits.each do |suit|
      values.each do |value|
        c = TrumpCard.new value.merge({:suit => suit })
        @cards << c
      end
    end
  end
end
