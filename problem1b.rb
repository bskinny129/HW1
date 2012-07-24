def count_words(string)

	include Enumerable
	
	string.lines.map { |s| s.downcase.split(/\W+/) }

end
