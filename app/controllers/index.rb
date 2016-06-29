class Makersbnb < Sinatra::Base
  get "/" do
    redirect("/spaces")
  end
end
