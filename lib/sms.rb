require 'twilio-ruby'

def time
  add_hour = Time.now + 3600
  add_hour.strftime("%H:%M")
end
# put your own credentials here
account_sid = 'ACff0050d994728217a2b61e4867dfcc14'
auth_token = ''

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

#def send_sms
@client.messages.create(
  from: '+441618504736',
  to: '+44',
  body: "Thank you for your purchase. Your order will be delivered before: #{time}."
)
#end
