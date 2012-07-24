def palindrom(string)

	include Enumerable

	result = string.lines.map { |s|	s.reverse }.
		map { |s| s.downcase }
	#.     |s| s =~ /\w/
	#	map { |s| s.downcase }
		#downcase ==
		#string.select { |s| s =~ \w}.
		#downcase.
		#reverse

		
end



# \w is "word char"
# \W is "non word char"

# \b is start of string
# \B is end of string

# \i is case-insensitive