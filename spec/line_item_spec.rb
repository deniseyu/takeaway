require 'line_item'
require 'menu'

describe LineItem do 

	let(:line_item) { LineItem.new }

	it "should compute the cost of three krabby patties" do 
		expect(line_item.subtotal("krabby patty", 3)).to eq 3.75
	end


	
end