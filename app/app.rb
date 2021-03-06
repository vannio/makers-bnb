ENV["RACK_ENV"] ||= "development"

require "sinatra/base"
require "sinatra/flash"
require "sinatra/partial"

require_relative "data_mapper_setup"
require_relative "server"
require_relative "controllers/index"
require_relative "controllers/spaces"
require_relative "controllers/users"
require_relative "controllers/sessions"
require_relative "controllers/bookings"
require_relative "models/booking_checker"

class Makersbnb < Sinatra::Base
  run! if app_file == $0
end
