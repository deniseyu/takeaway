class Order

	attr_accessor :orders

	def initialize
		@menu = Menu.new
		@orders = []
	end

	def add(line_item)
		@orders << line_item
	end

	def grand_total
		@orders.inject { |x, y| x + y }
	end

end
