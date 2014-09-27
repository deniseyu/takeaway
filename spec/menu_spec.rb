require 'menu'

describe Menu do 

	let(:menu) { Menu.new }

	it "should be a hash" do
		expect(menu.items).to be_kind_of Hash
	end
	
end