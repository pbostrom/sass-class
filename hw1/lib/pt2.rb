require 'set'

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  engine = {["P", "R"] => "P", ["P", "S"] => "S", ["R", "S"] => "R"}
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless 
  engine.has_value?(game[0][1].upcase) && engine.has_value?(game[1][1].upcase)

  if game[0][1].upcase == game[1][1].upcase
    return game[0]
  end
  game_hash = {game[0][1] => game[0], game[1][1] => game[1]}
  return game_hash[engine[[game[0][1].upcase, game[1][1].upcase].sort]]
end

def rps_tournament_winner(tourney)
  if tourney[0][0].class == String
    return rps_game_winner(tourney)
  end

  return rps_tournament_winner([rps_tournament_winner(tourney[0]), rps_tournament_winner(tourney[1])])
end
