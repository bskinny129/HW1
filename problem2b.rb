

def rps_tournament_winner(bracket)
	require './problem2.rb'

	
	if bracket[0][0].class.to_s == "Array"
		#go down a level and have the winners play each other
		return rps_game_winner([rps_tournament_winner(bracket[0]),
		rps_tournament_winner(bracket[1])])
	else
		#make them play each other
		return rps_game_winner(bracket)
	end
	
end


def tournament_round(bracket)

	tournament_round(bracket[0])

end