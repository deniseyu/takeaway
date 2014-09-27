class LineItem

	def initialize
		@menu = Menu.new
	end

	def subtotal(item, quantity)
		@menu.items[item] * quantity
	end


end