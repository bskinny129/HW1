class Class

	def attr_accessor_with_history(attr_name)
	
		class_eval("
			def #{attr_name}
				@#{attr_name}
			end
			
			def #{attr_name}_history
				@#{attr_name}_history
			end
			
			def #{attr_name}=(new_attr_value)
				@#{attr_name}_history ||= Array.new
				@#{attr_name}_history.push(new_attr_value)
				
				@#{attr_name} = new_attr_value
			end
		")	
	
	end

end

class Foo
	attr_accessor_with_history :bar
end