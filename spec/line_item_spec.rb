require 'line_item'
require 'menu'

let(:line_item) { LineItem.new }


describe LineItem do 

	it "should compute the cost of three burgers" do 
		expect(subtotal(burger, 3)).to eq 15
	end
	
end