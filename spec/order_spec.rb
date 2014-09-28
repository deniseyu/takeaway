require 'order'
require 'line_item'
require 'menu'

describe Order do 

	let(:order) { Order.new }
	let(:line_item) { LineItem.new }

	it "should sum up three subtotals" do 
		order.add(line_item.subtotal("krabby patty", 2))
		order.add(line_item.subtotal("salty sea dog", 3))
		order.add(line_item.subtotal("kelp rings", 1))
		expect(order.grand_total).to eq 7.75
	end
	
end