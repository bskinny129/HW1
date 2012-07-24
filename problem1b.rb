def count_words(string)

	include Enumerable
	
	string.lines.map { |s| s.split(/\b/) }.
		reject { |s| s =~ /^W+$/ }

end
