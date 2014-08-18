# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Blog::Application.initialize!

# if Rails.env.development?
#   Rails.logger = Le.new('969a6d8a-f5ea-45b7-aa3b-5462c9d05b1d', info: true)
# else
#   Rails.logger = Le.new('969a6d8a-f5ea-45b7-aa3b-5462c9d05b1d')
# end
