

def combine_anagrams(words)

	sortedHash = Hash.new
	words.map do |word| 
		sortedHash[word] = word.downcase.each_char.to_a.sort.join
	end
	#sortedHash.invert
	
	puts "sortedHash"
	puts sortedHash
	
	result = Array.new
	sortedHash.each_value.to_a.uniq.each do |sorted|
		result.push(sortedHash.select {|k,v| v == sorted}.each_key.to_a)
	end
	puts "result"
	puts result
	#allUniques.each do |uniq|
	#	words.select { |word| word.each_char.to_a.sort.join  }
	#end
	
#	=~ /^#{uniq}$/i

end