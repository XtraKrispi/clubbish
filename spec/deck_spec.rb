require "./lib/card"
require "./lib/deck"

describe Deck do
  before :each do
    @deck = Deck.new
  end
  describe "#new" do
    it "should have 52 cards" do
      @deck.cards.length.should be 52
    end
    it "should be able to handle multiple decks" do
      @deck = Deck.new 3
      @deck.cards.length.should be (3*52)
    end
  end
  describe "#empty?" do
    it "should not be empty" do
      @deck.empty?.should == false
    end
    it "should be empty" do
      @deck.deal! @deck.cards.length
      @deck.empty?.should == true
    end
  end
  describe "#deal" do
    describe "full deck" do
      it "should be able to deal 1 card" do
        top_card = @deck.cards.last
        cards_length = @deck.cards.length;
        c = @deck.deal!
        
        c.should == [top_card]
        
        @deck.cards.length.should be cards_length - 1        
      end
      it "should be able to deal 3 cards" do
        bottom_cards = [@deck.cards[-3], @deck.cards[-2], @deck.cards[-1]]
        cards_length = @deck.cards.length;
        c = @deck.deal! 3
        
        c.should == bottom_cards
        
        @deck.cards.length.should be cards_length - 3        
      end
    end
    describe "empty deck" do
      before :each do
        @deck = Deck.new
        @deck.deal! @deck.cards.length
      end
      it "should throw an exception on deal" do
        lambda{@deck.deal!}.should raise_error
      end
    end
  end
  describe "#shuffle!" do
    before :each do
      @original_cards = @deck.cards.dup
    end
    it "should be able to shuffle the cards" do
      @deck.shuffle!
      match = true
      @deck.cards.each_with_index do |card, num|
        unless card.to_s == @original_cards[num].to_s
          match = false
          break
        end
      end
      
      match.should == false
      
    end
  end
end
