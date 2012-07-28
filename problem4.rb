class Dessert
	def initialize(name, calories)
		@name = name
		@calories = calories
	end
	
	attr_accessor :name
	attr_accessor :calories
	
	def healthy?
		if calories < 200
			return true
		else
			return false
		end
	end
	
	def delicious?
		true
	end
end

class JellyBean < Dessert
	def initialize(name, calories, flavor)
	# YOUR CODE HERE
	end
	
	def delicious?
	# YOUR CODE HERE
	end
end