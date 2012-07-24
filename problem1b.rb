def count_words(string)

	include Enumerable
	
	allWordsWithDups = string.lines.map { |s| s.downcase.split(/\W+/) }[0]
	
	string.lines.map { |s| s.downcase.split(/\W+/) }[0].uniq
	
	
end
