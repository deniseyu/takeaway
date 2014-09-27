require 'order'
require 'line_item'
require 'menu'

describe Order do 

	let(:order) { Order.new }
	let(:line_item) { LineItem.new }

	it "should sum up two subtotals" do 
		line1 = line_item.subtotal("krabby patty", 2)
		line2 = line_item.subtotal("salty sea dog", 3)
		order.add(line1)
		order.add(line2)
		expect(order.grand_total).to eq 6.25
	end
	
end