# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.default_url_options = { host: 'localhost:3000' }
Rails.application.routes.default_url_options[:host] = 'localhost:3000'
