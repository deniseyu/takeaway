require 'takeaway'
require 'menu'
require 'order'
require 'line_item'

describe Takeaway do 

	let(:takeaway) { Takeaway.new }

	it "should send a confirmation message with estimated delivery time" do
		line_item = LineItem.new
		takeaway.order.add(line_item.subtotal("krabby patty", 2))
		expect(takeaway.message).to eq "Thank you! Your order of $2.5 was placed and will be delivered before #{takeaway.one_hour_from_now}."
	end

end