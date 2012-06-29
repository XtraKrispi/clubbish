class Deck
  attr_reader :cards
  def initialize num_of_decks = 1
    @cards = []
    
    make_cards
    
    @cards = @cards * num_of_decks   
  end

  def make_cards
    suits = ["Hearts", "Spades", "Diamonds", "Clubs"]
    values = Array.new
    values[0] = {:long_name=>"Ace", :short_name=>"A", :sort_ranking => 13}
    values[1] = {:long_name=>"Two", :short_name=>"2", :sort_ranking => 1}
    values[2] = {:long_name=>"Three", :short_name=>"3", :sort_ranking => 2}
    values[3] = {:long_name=>"Four", :short_name=>"4", :sort_ranking => 3}
    values[4] = {:long_name=>"Five", :short_name=>"5", :sort_ranking => 4}
    values[5] = {:long_name=>"Six", :short_name=>"6", :sort_ranking => 5}
    values[6] = {:long_name=>"Seven", :short_name=>"7", :sort_ranking => 6}
    values[7] = {:long_name=>"Eight", :short_name=>"8", :sort_ranking => 7}
    values[8] = {:long_name=>"Nine", :short_name=>"9", :sort_ranking => 8}
    values[9] = {:long_name=>"Ten", :short_name=>"10", :sort_ranking => 9}
    values[10] = {:long_name=>"Jack", :short_name=>"J", :sort_ranking => 10}
    values[11] = {:long_name=>"Queen", :short_name=>"Q", :sort_ranking => 11}
    values[12] = {:long_name=>"King", :short_name=>"K", :sort_ranking => 12}
    
    suits.each do |suit|
      values.each do |value|
        c = Card.new value.merge({:suit => suit })
        @cards << c
      end
    end
  end
  
  def deal! number_of_cards = 1
    if @cards.length < number_of_cards
      raise "Not enough cards to deal"
    else
      @cards.pop number_of_cards
    end
  end
  
  def empty?
    @cards.empty?
  end
  
  def shuffle!
    @cards.shuffle!
  end
  
  def shuffle
    @cards.shuffle
  end

  def peek number_of_cards = 1
    @cards.last(number_of_cards).reverse
  end
end
