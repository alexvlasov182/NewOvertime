#GMAIL CONFIG
# config.action_mailer.default_url_options = { :host =>'localhost:3000' }
# config.action_mailer.delivery_method = :smtp
# config.action_mailer.perform_deliveries = true
# config.action_mailer.raise_delivery_errors = true
# config.action_mailer.default :charset => "utf-8"

ActionMailer::Base.smtp_settings = {
    :user_name => ENV['GMAIL_USERNAME'], # This is the string literal 'apikey', NOT the ID of your API key
    :password => ENV['GMAIL_PASSWORD'], # This is the secret sendgrid API key which was issued during API key creation
    :domain => 'gmail.com',
    :address => 'smtp.gmail.com',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
}