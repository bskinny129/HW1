
class String
	
	def palindrome?
		self.lines.map { |s| s.gsub(/\W/,'').reverse.downcase } == 
		self.lines.map { |s| s.gsub(/\W/,'').downcase }
	end
	
end

module Enumerable
	def palindrome?(string)

		string.lines.map { |s| s.gsub(/\W/,'').reverse.downcase } == 
		string.lines.map { |s| s.gsub(/\W/,'').downcase }
	end
end