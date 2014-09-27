require 'takeaway'
require 'menu'

describe Takeaway do 

	let(:takeaway) { Takeaway.new }

	it "should list an item and price" do 
		expect(takeaway.show_menu("krabby patty")).to eq "krabby patty, $1.25"
	end

	it "should be able to view the whole menu" do 
		expect(takeaway.show_whole_menu).to include "krabby patty, $1.25"
	end



end