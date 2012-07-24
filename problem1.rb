def palindrom?(string)

	result = string.select(\w).
		downcase ==
		string.select(\w).
		downcase.
		reverse

		
end



# \w is "word char"
# \W is "non word char"

# \b is start of string
# \B is end of string

# \i is case-insensitive