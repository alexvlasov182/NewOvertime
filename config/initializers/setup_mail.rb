

config.action_mailer.smtp_settings = {
    :user_name => ENV['GMAIL_USERNAME'], # This is the string literal 'apikey', NOT the ID of your API key
    :password => ENV['GMAIL_PASSWORD'], # This is the secret sendgrid API key which was issued during API key creation
    :domain => 'gmail.com',
    :address => 'smtp.gmail.com',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
}