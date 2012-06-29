require "./lib/card"
require "./lib/deck"
require "./lib/trump_card"
require "./lib/clubbish_deck"
require "./lib/player"
require "./lib/clubbish_player"
require "./lib/game_logic"
class Game
  def initialize
    @deck = ClubbishDeck.new
    @players = []
    @players[0] = ClubbishPlayer.new :player_name=>"Player 1"
    @players[1] = ClubbishPlayer.new :player_name=>"Player 2"
    @players[2] = ClubbishPlayer.new :player_name=>"Player 3"
    @players[3] = ClubbishPlayer.new :player_name=>"Player 4"
  end
  
  def run!
  end
end

d = ClubbishDeck.new
d.shuffle!
cards = d.peek(4)
puts cards
puts
puts GameLogic.trick_winner cards, "Hearts"
