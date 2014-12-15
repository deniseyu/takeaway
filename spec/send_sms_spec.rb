require './lib/send_sms'
require 'webmock/rspec'

describe Message do

  # WebMock.disable_net_connect!(:allow_localhost => true)
  WebMock.allow_net_connect!(:net_http_connect_on_start => true)

  it 'it should send a message' do
    url = "https://AC310a4dda071eb31efc900b3295fd639e:3977b2636166844b369061e872c3a5df@api.twilio.com/2010-04-01/Accounts/AC310a4dda071eb31efc900b3295fd639e/Messages.json"
    body = {
      "Body"=>"Your order was received and will be delivered before 18:11",
      "From"=>"+441344231325",
      "To"=>ENV['MY_NUMBER']
    }
    headers = {
      'Accept'=>'application/json',
      'Accept-Charset'=>'utf-8',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'Content-Type'=>'application/x-www-form-urlencoded',
      'User-Agent'=>'twilio-ruby/3.13.1 (ruby/x86_64-darwin13.0 2.1.2-p95)'
    }

    Webmock.stub_request(:post, "http://api.twilio.com:443/2010-04-01/Accounts/AC310a4dda071eb31efc900b3295fd639e/Messages.json").
         with(:body => "abc",
              :headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
         to_return(:status => 200, :body => "", :headers => {})

    # expect(a_request(:post, "www.something.com")).to have_been_made

  end


end


