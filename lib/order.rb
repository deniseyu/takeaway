class Order

	attr_accessor :orders, :line_item

	def initialize
		@menu = Menu.new
		@orders = []
	end

	def add(line_item)
		@orders << line_item
	end

	# def view_line(line_item)
	# 	line_item.item
	# end

	def grand_total
		@orders.inject { |x, y| x + y }
	end

	# def print_receipt
	# 	@orders[1]
		# @orders.each { |line| return line.item }
			# "#{line.item}, #{line.cost}, #{line.quantity}, #{line.subtotal}" }
	end

end
