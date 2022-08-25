# frozen_string_literal: true

module SmsTool
  account_sid = ENV.fetch('TWILIO_ACCOUNT_SID', nil)
  auth_token = ENV.fetch('TWILIO_AUTH_TOKEN', nil)

  @client = Twilio::REST::Client.new account_sid, auth_token

  def self.send_sms(number:, message:)
    @client.messages.create(
      from: ENV.fetch('TWILIO_PHONE_NUMBER', nil),
      to: "+4#{number}",
      body: message.to_s
    )
  end
end
