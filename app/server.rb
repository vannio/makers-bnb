class Makersbnb < Sinatra::Base
  register Sinatra::Flash
  register Sinatra::Partial
  use Rack::MethodOverride

  enable(:sessions)
  set(:session_secret, "not_fascists")

  enable(:partial_underscores)
  set(:partial_template_engine, :erb)
end
