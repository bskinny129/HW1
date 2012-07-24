def count_words(string)

	include Enumerable
	
	allWordsWithDups = string.lines.map { |s| s.downcase.split(/\W+/) }[0]
	
	allWordsWithCounts = Hash.new
	string.lines.map { |s| s.downcase.split(/\W+/) }[0].uniq.
		each do |word|
			allWordsWithCounts[word] = allWordsWithDups.count(word)
		end	
		
	puts allWordsWithCounts
end
