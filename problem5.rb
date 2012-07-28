class Class

	def attr_accessor_with_history(attr_name)
	
		class_eval("
			def #{attr_name}
				@history
			end
			
			def #{attr_name}=(new_attr_name)
				@history ||= Array.new
				@history.push(new_attr_name)
			end
		")	
	
	end

end

class Foo
	attr_accessor_with_history :bar
end