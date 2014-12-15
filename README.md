# Takeaway App

### Week 2 Challenge Instructions

Write a class Takeaway with the following functionality:

* A list of dishes with prices
* Placing the order by giving the list of dishes, their quantities and a number that should be the exact total. * Send the customer a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52"
* Implement the text sending functionality using Twilio API
* Use a Gemfile to manage your gems
* Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent

### Technologies Used

* Ruby
* RSpec
* Twilio API
* Webmock

### To Run

```
git clone git@github.com:deniseyu/takeaway.git
cd takeaway
bundle install
```
Create a developer account on [Twilio](http://www.twilio.com) to get an authentication credentials. In command line, configure the SID, auth token, your Twilio number, and your mobile number as environment variables (without curly braces):
```
export MY_NUMBER={your number goes here}
export TWILIO_NUMBER={your number assigned by Twilio}
export TWILIO_ACCOUNT_SID={your SID}
export TWILIO_AUTH_TOKEN={your auth token}
```

To test, run 'rspec' from command line.

### Program Design

This program contains four classes: the menu, the order, the line item, and sending an SMS.

### To Do

A previous version had all RSpec tests passing with a real mobile endpoint. With Webmock, tests for the stubbed POST requests to the Twilio API need to be rewritten.

