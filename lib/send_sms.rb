require 'twilio-ruby'

account_sid = 'AC310a4dda071eb31efc900b3295fd639e'
auth_token = '3977b2636166844b369061e872c3a5df'
@client = Twilio::REST::Client.new account_sid, auth_token
 
message = @client.account.messages.create(:body => "Hello, this is dog",
    :to => "+447472140249",    
    :from => "+441359366037")  
puts message.sid