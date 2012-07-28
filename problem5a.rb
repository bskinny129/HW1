class Numeric
	@@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
	
	def dollar; self; end
#	def euros; self * @@currencies['euro']; end
#	def rupees; self * @@currencies['rupee']; end
#	def yens; self * @@currencies['yen']; end
	
	def in(currency)
		self * @@currencies[currency.to_s.gsub( /s$/, '')]
	end
	
	def method_missing(method_id)

		singular_currency = method_id.to_s.gsub( /s$/, '')
		if @@currencies.has_key?(singular_currency)
			self * @@currencies[singular_currency]
		elsif singular_currency == dollar
			self
		else
			super
		end

	end
end