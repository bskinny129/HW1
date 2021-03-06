class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
include Enumerable

class String 
	def <=>(str)

		if self == str
			return 0 
		end
		
		if self == "s" 
			if str == "p"
				return -1
			else
				return 1
			end
		end
		
		if self == "p"
			if str == "r"
				return -1
			else
				return 1
			end
		end
		
		if self == "r" 
			if str == "s"
				return -1
			else
				return 1
			end
		end
		
	end
end

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2

	raise NoSuchStrategyError unless game.select { |player| player[1] =~ /^(r|p|s)$/i }.
		length == 2
	
	game.sort { |a,b| a[1].downcase<=>b[1].downcase }[0]
		
end