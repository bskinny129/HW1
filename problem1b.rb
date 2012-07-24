def count_words(string)

	include Enumerable
	
	allWordsWithDups = string.lines.map { |s| s.downcase.split(/\W+/) }[0]
	
	allWordWithCounts = Hash.new
	string.lines.map { |s| s.downcase.split(/\W+/) }[0].uniq.
		each do |word|
			allWordWithCounts[|word|] = allWordsWithDups.count(|word|)
			
end
