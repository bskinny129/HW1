class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
include Enumerable

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2

	raise NoSuchStrategyError unless game.select { |player| player[1] =~ /^(r|p|s)$/i }.
		length == 2
	
	game.sort { |a,b| a[1].downcase<=>b[1].downcase }
		
end