class Takeaway

	attr_accessor :menu 

	def initialize
		@menu = Menu.new 
	end

	def show_whole_menu
		@menu.items.each { |key, value| puts "#{key}, $#{value}"}
	end

	def show_menu(item)
		cost = @menu.items[item]
		return "#{item}, $#{cost}"
	end

end