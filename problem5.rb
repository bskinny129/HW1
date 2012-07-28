class Class

	def attr_accessor_with_history(attr_name)
		attr_name = attr_name.to_s
		attr_reader attr_name
		attr_reader attr_name+"_history"
		
		class_eval("
			def #{attr_name}
				@#{attr_name}
			end
			
			def #{attr_name}_history
				@#{attr_name}_history
			end
			
			def #{attr_name}=(new_attr_value)
				@#{attr_name}_history ||= Array.new(nil)
				@#{attr_name}_history.push(new_attr_value)
				
				@#{attr_name} = new_attr_value
			end
		")	
	
	end

end

class Foo
	attr_accessor_with_history :bar
end