require 'takeaway'
require 'menu'

describe Takeaway do 

	let(:takeaway) { Takeaway.new }


	it "should list an item and price" do 
		expect(takeaway.show_menu("burger")).to eq "burger, $5"
	end





end