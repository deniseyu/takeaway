class Takeaway

	attr_accessor :menu 

	def initialize
		@menu = Menu.new 
	end

	def show_whole_menu
		@menu.items.each { |key, value| return "#{key}, $#{value}"}
	end

end