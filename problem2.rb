class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
include Enumerable

def rps_game_winner(game)
raise WrongNumberOfPlayersError unless game.length == 2
# your code here

	game.select { |player| player[1] ~= /^(r|p|s)$/i }

end