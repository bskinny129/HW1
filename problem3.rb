

def combine_anagrams(words)

	sortedHash = Hash.new
	words.map do |word| 
		sortedHash[word] = word.downcase.each_char.to_a.sort.join
	end
	sortedHash.invert
	
	sortedHash.each_value.to_a.uniq
	#sortedHash.select {|k,v| v = }
	#allUniques.each do |uniq|
	#	words.select { |word| word.each_char.to_a.sort.join  }
	#end
	
#	=~ /^#{uniq}$/i

end