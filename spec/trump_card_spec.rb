require "./lib/card"
require "./lib/trump_card.rb"

describe TrumpCard do
  before :each do
    @card = TrumpCard.new :long_name=>"Nine",:short_name => "9",:suit => "Clubs",:non_trump_points=>0,:trump_points=>14,:non_trump_ranking=>6,:trump_ranking=>2
  end
  
  describe "#new" do
    it "should be a TrumpCard" do
      @card.should be_an_instance_of TrumpCard
    end
  end
  describe "#suit" do
    it "should return the proper suit" do
      @card.suit.should eql "Clubs"
    end
  end
  describe "#value" do
    it "should return the proper value" do
      @card.long_name.should eql "Nine"
    end
  end
  describe "#to_long_string" do
    it "should return the long version of the card name" do
      @card.to_long_string.should eql "Nine of Clubs"
    end
  end
  describe "#to_short_string" do
    it "should return the short version of the card name" do
      @card.to_short_string.should eql "9C"
    end
  end
  describe "#to_s" do
    it "should return the short version of to string" do
      @card.to_s.should eql "9C"
    end
  end
  describe "rankings" do
    it "should have the right ranking when not trump" do
      @card.non_trump_ranking.should eql 6
    end
    it "should have the right ranking when in trump" do
      @card.trump_ranking.should eql 2
    end
  end
  describe "points" do
    it "should have the right points when not trump" do
      @card.non_trump_points.should eql 0
    end
    it "should have the right points when in trump" do
      @card.trump_points.should eql 14
    end
  end
  describe "comparison" do
    before :each do
      @card2 = TrumpCard.new :long_name => "Ace", :short_name => "A", :suit => "Clubs", :non_trump_points=>11,:trump_points=>11,:trump_ranking=>3,:non_trump_ranking=>1
    end
    it "should compare correctly by trump rank" do
      @card2.trump_ranking.should be > @card.trump_ranking
    end
    it "should compare correctly by non-trump rank" do
      @card2.non_trump_ranking.should be < @card.non_trump_ranking
    end    
  end
end
