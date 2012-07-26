class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
include Enumerable

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2

	raise NoSuchStrategyError unless game.select { |player| player[1] =~ /^(r|p|s)$/i }.
		length == 2
	
	if game[0][1]==game[1][1]
		return game[0]
	else
		return game[1]
	end
		
end