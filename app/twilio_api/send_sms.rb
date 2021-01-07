# Download the helper library from https://www.twilio.com/docs/ruby/install
# require 'rubygems'
# require 'twilio-ruby'
# require("bundler")
# Bundler.require()
# # Your Account Sid and Auth Token from twilio.com/console
# # and set the environment variables. See http://twil.io/secure
# account_sid = 'ACb964b111bb91a4ac4ba8457804d27729'
# auth_token = '1bf5ede4f3231a701777da909913ef96'
# @client = Twilio::REST::Client.new(account_sid, auth_token)

# def send_text(input)
#     message = @client.messages.create(
#         body: "#{input}",
#         from: '+12672144969',
#         to: '+19147557095'
#     )
#     puts message.sid
# end 
