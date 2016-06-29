class Makersbnb < Sinatra::Base
  register Sinatra::Flash
  register Sinatra::Partial
  use Rack::MethodOverride

  enable(:sessions)
  set(:session_secret, "not_fascists")

  enable(:partial_underscores)
  set(:partial_template_engine, :erb)

  helpers do
   def current_user
     @current_user ||= User.get(session[:user_id])
   end
  end

end
