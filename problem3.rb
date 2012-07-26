

def combine_anagrams(words)

	allUniques = words.map { |word| word.downcase.each_char.to_a.sort.join }.
		uniq

	allUniques.each do |uniq|
		words.select { |word| puts word.each_char.to_a.sort.join  }
	end
	
#	=~ /^#{uniq}$/i

end