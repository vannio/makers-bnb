class Makersbnb < Sinatra::Base
  get "/" do
    erb(:index)
  end
end
