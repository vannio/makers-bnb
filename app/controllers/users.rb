class Makersbnb < Sinatra::Base

  get '/users/new' do
    erb(:users/new)
  end

end