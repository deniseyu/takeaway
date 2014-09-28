class Takeaway

	attr_accessor :menu, :order

	def initialize(order = nil)
		@menu = Menu.new 
		@order = Order.new
	end

	def show_whole_menu
		@menu.items.each { |key, value| puts "#{key}, $#{value} \n"}
	end

	def one_hour_from_now
		time = Time.now + 60*60
	end

	def message
		"Thank you! Your order of $#{order.grand_total} was placed and will be delivered before #{one_hour_from_now}."
	end




end