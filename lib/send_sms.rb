require 'twilio-ruby'

class Message

  def send
    account_sid = ENV['TWILIO_ACCOUNT_SID'].to_s
    auth_token = ENV['TWILIO_AUTH_TOKEN'].to_s

    @client = Twilio::REST::Client.new account_sid, auth_token

    one_hour_from_now = (Time.now + 3600).strftime("%H: %M")

    message = @client.account.messages.create(:body => "Your order was received and will be delivered before #{one_hour_from_now}",
        :to => ENV['MY_NUMBER'],
        :from => "+441359366037")
  end

end
