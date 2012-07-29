class NoSuchCurrencyError < StandardError ; end

class Numeric
	@@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
	
	def dollar; self; end
	
	def in(currency)
		singular_currency = currency.to_s.gsub( /s$/, '')
		if @@currencies.has_key?(singular_currency)
			self / @@currencies[singular_currency]
		else
			raise NoSuchCurrencyError
		end
	end
	
	def method_missing(method_id)

		singular_currency = method_id.to_s.gsub( /s$/, '')

		if @@currencies.has_key?(singular_currency)
			self * @@currencies[singular_currency]
		elsif singular_currency == "dollar"
			self
		else
			super
		end

	end
end