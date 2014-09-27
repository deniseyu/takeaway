require 'line_item'
require 'menu'

describe LineItem do 

	let(:line_item) { LineItem.new }

	it "should compute the cost of three krabby patties" do 
		expect(line_item.subtotal("krabby patty", 3)).to eq 3.75
	end

	it "should compute the cost of five kelp shakes" do
		expect(line_item.subtotal("kelp shake", 5)).to eq 10.00
	end


	
end