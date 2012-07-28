def count_words(string)

	include Enumerable
	
	allWordsWithDups = string.lines.map { |s| s.downcase.split(/\W+/) }[0]
	
	allWordsWithCounts = Hash.new
	string.lines.map { |s| s.downcase.split(/\W+/) }[0].uniq.
		each do |word|
			allWordsWithCounts[word] = allWordsWithDups.count(word)
		end	
		
	return allWordsWithCounts
end


def palindrome?(string)

	include Enumerable

	string.lines.map { |s| s.gsub(/\W/,'').reverse.downcase } == 
		string.lines.map { |s| s.gsub(/\W/,'').downcase }

end