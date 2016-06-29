class Makersbnb < Sinatra::Base
  get "/spaces/new" do
    erb(:"spaces/new")
  end
  post "/spaces" do
    @params = params
    erb(:"spaces/index")
  end
end
