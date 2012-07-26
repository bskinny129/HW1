

def combine_anagrams(words)

	allUniques = words.map { |word| word.downcase.each_char.to_a.sort.join }.
		uniq

	allUniques.each do |uniq|
		words.select { |word| word.each_char.to_a.sort.join =~ /^#{uniq}$/i }
	end
	
#	words.map { |word| puts word.lines.sort }
#		puts word.downcase.map { |c| c.
#	end

end