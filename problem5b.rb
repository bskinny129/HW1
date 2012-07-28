
class String
	
	def palindrome?
		include Enumerable
		string.lines.map { |s| s.gsub(/\W/,'').reverse.downcase } == 
		string.lines.map { |s| s.gsub(/\W/,'').downcase }
	end
	
end

module Enumerable
	def palindrome?(string)

		string.lines.map { |s| s.gsub(/\W/,'').reverse.downcase } == 
		string.lines.map { |s| s.gsub(/\W/,'').downcase }
	end
end