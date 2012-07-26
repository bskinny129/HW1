

def combine_anagrams(words)

	sortedHash = Hash.new
	words.map do |word| 
		sortedHash[word] = word.downcase.each_char.to_a.sort.join
	end
	
	result = Array.new
	sortedHash.each_value.to_a.uniq.each do |sorted|
		result.push(sortedHash.select {|k,v| v == sorted}.keys)
		
		puts sortedHash.select {|k,v| v == sorted}.keys
	end
	puts "RESULT"
	puts result
	#allUniques.each do |uniq|
	#	words.select { |word| word.each_char.to_a.sort.join  }
	#end
	
#	=~ /^#{uniq}$/i

end