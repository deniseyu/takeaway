class Menu 

	attr_reader :items

	def initialize
		@items = { 	"krabby patty" => 1.25, 
					"double krabby patty" => 2.00,
					"triple krabby patty" => 3.00,
					"salty sea dog" => 1.25,
					"kelp rings" => 1.50, 
					"coral bits" => 1.00,
					"kelp shake" => 2.00,
					"sailors surprise" => 3.00 }
	end

end


