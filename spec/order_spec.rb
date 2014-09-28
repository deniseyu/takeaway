require 'order'
require 'line_item'
require 'menu'

describe Order do 

	let(:order) { Order.new }
	let(:line_item) { LineItem.new }

	it "should sum up three subtotals" do 
		line1 = line_item.subtotal("krabby patty", 2)
		line2 = line_item.subtotal("salty sea dog", 3)
		line3 = line_item.subtotal("kelp rings", 1)
		order.add(line1)
		order.add(line2)
		order.add(line3)
		expect(order.grand_total).to eq 7.75
	end

	it "should print the name of an item" do
		line1 = LineItem.new("krabby patty", 2)
		order.add(line1)
		expect(order.view_line(line1)).to eq "krabby patty"
	end

	# it "should print a receipt containing all line items" do 
	# 	line1 = line_item.subtotal("krabby patty", 2)
	# 	line2 = line_item.subtotal("salty sea dog", 3)
	# 	order.add(line1)
	# 	order.add(line2)
	# 	expect(order.print_receipt).to eq "krabby patty, 1.25, 2 /n salty sea dog, 1.25, 3"
	# end

	
end