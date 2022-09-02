# frozen_string_literal: true

module SmsTool
  account_sid = ENV['TWILIO_ACCOUNT_SID']
  auth_token = ENV['TWILIO_AUTH_TOKEN']
  @client = Twilio::REST::Client.new(account_sid, auth_token)

  def self.send_sms(number:, message:)
    @client.messages.create(
      messaging_service_sid: ENV['TWILIO_MESSAGING_SERVICE_SID'],
      to: "+4#{number}",
      body: "Link for my application: #{message}"
    )
  end
end
