# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.smtp_settings = {
#   :user_name => ENV['SENDGRID_USERNAME'],
#   :password => ENV['SENDGRID_PASSWORD'], # This is the secret sendgrid API key which was issued during API key creation
#   :domain => 'heroku.com',
#   :address => 'smtp.sendgrid.net',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }
