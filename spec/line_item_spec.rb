require 'line_item'
require 'menu'

describe LineItem do 

	let(:line_item) { LineItem.new }

	it "should show the cost of a krabby patty" do 
		expect(line_item.cost("krabby patty")).to eq 1.25
	end

	it "should compute the cost of three krabby patties" do 
		expect(line_item.subtotal("krabby patty", 3)).to eq 3.75
	end

	it "should show me the item, cost, and quantity" do 
		expect(line_item.view("krabby patty", 2)).to eq "krabby patty, $1.25, 2"
	end
	
end