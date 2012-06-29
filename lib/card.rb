class Card
  attr_reader :suit, :long_name, :short_name
  attr_accessor :sort_ranking
  def initialize params
    params = {
      :long_name => "Unknown",
      :short_name => "Unknown",
      :suit => "U",
      :sort_ranking => -1
    }.merge(params)
    @long_name = params[:long_name]
    @short_name = params[:short_name]
    @suit = params[:suit]
    @sort_ranking = params[:sort_ranking]
  end
  
  def to_long_string
    @long_name + " of " + @suit
  end
  
  def to_short_string
    @short_name.capitalize + @suit[0].capitalize
  end
  
  def to_s
    to_short_string
  end
end
