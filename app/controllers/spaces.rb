class Makersbnb < Sinatra::Base
  get "/spaces/new" do
    erb(:"spaces/new")
  end
  post "/spaces" do

    @space = Space.create({
      name: params[:name],
      description: params[:description],
      price: params[:price],
      user_id: current_user
    })
    if @space.id
      erb(:"spaces/index")
    else
      flash[:errors]= "from incomplete"
    end
  end
end
