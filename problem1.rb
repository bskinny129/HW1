def palindrom?(string)

	include Enumerable

	string.lines.map { |s| s.gsub(/\W/,'').reverse.downcase }
		== string.lines.map { |s| s.gsub(/\W/,'').downcase }

end



# \w is "word char"
# \W is "non word char"

# \b is start of string
# \B is end of string

# \i is case-insensitive