class TrumpCard < Card
  attr_reader :non_trump_ranking, :trump_ranking, :non_trump_points, :trump_points
	def initialize params
    params = {
      :non_trump_points => 0,
      :trump_points => 0,
      :non_trump_ranking => 0,
      :trump_ranking => 0,
    }.merge(params)
    
    long_name = params[:long_name]
    short_name = params[:short_name]
    suit = params[:suit]
    sort_ranking = params[:sort_ranking]
    @non_trump_points = params[:non_trump_points]
    @trump_points = params[:trump_points]
    @non_trump_ranking = params[:non_trump_ranking]
    @trump_ranking = params[:trump_ranking]
    super params
	end
end
