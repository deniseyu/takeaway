class LineItem

	def initialize
		@item = item
		@price = price
	end

	def subtotal(item, quantity)
		return price * quantity
	end
	
end