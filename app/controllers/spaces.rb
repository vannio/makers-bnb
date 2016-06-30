class Makersbnb < Sinatra::Base
  get "/spaces/new" do
    erb(:"spaces/new")
  end

  get "/spaces" do
    @spaces = Space.all()

    erb(:"spaces/index")
  end

  post "/spaces" do
    Space.create({
      name: params[:name],
      description: params[:description],
      price: params[:price],
      user_id: current_user.id
    })
    Availability.create({
      start_date: params[:start_date],
      end_date: params[:end_date]
    })
    flash.next[:notice]="Thanks, available dates are #{params[:start_date]} to  #{params[:end_date]}"

    redirect("/spaces")
  end

  get "/spaces/:id" do
    erb(:"bookings/new", locals: {space_id: params[:id]})
  end

end
