class LineItem

	attr_reader :item, :quantity

	def initialize(item = nil, quantity = nil)
		@menu = Menu.new
	end

	def cost(item)
		@menu.items[item]
	end

	def subtotal(item, quantity)
		cost(item) * quantity
	end

	def view(item, quantity)
		"#{item}, $#{cost(item)}, #{quantity}"
	end

end