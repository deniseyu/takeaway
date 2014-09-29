require_relative 'send_sms'

class Takeaway

	attr_accessor :menu, :order

	def initialize(order = nil)
		@menu = Menu.new 
		@order = Order.new
	end

	def show_whole_menu
		@menu.items.each { |key, value| puts "#{key}, $#{value} \n"}
	end

	def one_hour_from_now
		time = Time.now + 60*60
	end

	def message
		"Thank you! Your order of $#{order.grand_total} was placed and will be delivered before #{one_hour_from_now}."
	end

	def send_message
		require 'twilio-ruby'
		account_sid = 'AC310a4dda071eb31efc900b3295fd639e'
		auth_token = '3977b2636166844b369061e872c3a5df'
		@client = Twilio::REST::Client.new account_sid, auth_token
		message = @client.account.messages.create(:body => "Thank you! Your order of $#{order.grand_total} was placed and will be delivered before #{one_hour_from_now}.",
		    :to => "+447472140249",    
		    :from => "+441359366037")  
		puts message.sid
	end



end