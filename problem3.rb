

def combine_anagrams(words)

	sortedHash = Hash.new
	words.map do |word| 
		sortedHash[word] = word.downcase.each_char.to_a.sort.join
	end
	
	result = Array.new
	sortedHash.each_value.to_a.uniq.each do |sorted|
		result.push(sortedHash.select {|k,v| v == sorted}.keys)
		
	end

	return result


end