def count_words(string)

	include Enumerable
	
	string.lines.map { |s| s.split(/\W+/).
		downcase }[0]

end
