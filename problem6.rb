class CartesianProduct
	include Enumerable

	def initialize(first, second)
		@product = Array.new
		first.each do |first_element|
			second.each do |second_element|
				@product.push(Array[first_element, second_element])
			end
		end
#		@product.collect
#		puts @product.collect
		@product.each do |elt|
			yield elt
		end
	end
	
#	def each
#		@product.each do |elt|
#			yield elt
#		end
#	end

end	
	
#Examples of use
#c = CartesianProduct.new([:a,:b], [4,5])
#c.each { |elt| puts elt.inspect }
# [:a, 4]
# [:a, 5]
# [:b, 4]
# [:b, 5]
#c = CartesianProduct.new([:a,:b], [])
#c.each { |elt| puts elt.inspect }
# (nothing printed since Cartesian product
# of anything with an empty collection is empty)