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
	
end