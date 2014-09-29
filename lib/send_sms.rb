require 'twilio-ruby'

account_sid = 'AC310a4dda071eb31efc900b3295fd639e'
auth_token = '3977b2636166844b369061e872c3a5df'
@client = Twilio::REST::Client.new account_sid, auth_token

def one_hour_from_now
    time = Time.now + 60*60
    time.strftime("%I:%M")
end

message = @client.account.messages.create(:body => "Your order was received and will be delivered before #{one_hour_from_now}",
    :to => "+447472140249",    
    :from => "+441359366037")  
puts message.sid

