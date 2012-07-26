

def combine_anagrams(words)

	allUniques = words.map { |word| word.each_char.to_a.sort.join }.
		uniq

	
	
#	words.map { |word| puts word.lines.sort }
#		puts word.downcase.map { |c| c.
#	end

end