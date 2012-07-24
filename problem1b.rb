def count_words(string)

	include Enumerable
	
	string.lines.map { |s| s.split(/\W+/) }.
		map { |s| s.downcase }[0]

end
