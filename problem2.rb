class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
include Enumerable

class String 
	def <=>(str)
	
		puts self
		puts str
		
		return 0
		#if self == str return 0
		#if self == "s" && str == "p" return 1
		#if self > str
		#	return -1
		#else
		#	return 1
		#end
		
	end
end

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2

	raise NoSuchStrategyError unless game.select { |player| player[1] =~ /^(r|p|s)$/i }.
		length == 2
	
	game.sort { |a,b| a[1].downcase<=>b[1].downcase }[0]
		
end