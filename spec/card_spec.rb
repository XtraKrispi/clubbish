require "./lib/card"

describe Card do
  before :each do
    @card = Card.new :long_name => "Two", :short_name => "2", :suit => "Clubs"
  end
  
  describe "#new" do
    it "should be a Card" do
      @card.should be_an_instance_of Card
    end
  end
  describe "#suit" do
    it "should return the proper suit" do
      @card.suit.should eql "Clubs"
    end
  end
  describe "#value" do
    it "should return the proper value" do
      @card.long_name.should eql "Two"
    end
  end
  describe "#to_long_string" do
    it "should return the long version of the card name" do
      @card.to_long_string.should eql "Two of Clubs"
    end
  end
  describe "#to_short_string" do
    it "should return the short version of the card name" do
      @card.to_short_string.should eql "2C"
    end
  end
  describe "#to_s" do
    it "should return the short version of to string" do
      @card.to_s.should eql "2C"
    end
  end
end
