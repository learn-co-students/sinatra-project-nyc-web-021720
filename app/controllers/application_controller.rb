class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set(:views, 'app/views')

  #USERS

  get "/users" do
    @users = User.all
    erb :"users/index"
  end

  get "/users/new" do
    erb :"users/new"
  end

  post "/users" do
    user_params = params["user"]
    user = User.create(user_params)
    redirect "/users/#{user.id}"
  end

  get "/users/:id" do
    @user = User.find(params["id"])
    erb :"users/show"
  end

  #RESTAURANTS

  get "/restaurants" do
    @rests = Restaurant.all
    erb :"restaurants/index"
  end

  get "/restaurants/new" do
    erb :"restaurants/new"
  end

  post "/restaurants" do
    rest_params = params["rest"]
    binding.pry
    rest = Restaurant.create(rest_params)
    redirect "/restaurants/#{rest.id}"
  end

  get "/restaurants/:id" do
    # needs a dropdown for users who aren't on waiting list already
    @rest = Restaurant.find(params["id"])
    erb :"restaurants/show"
  end

  # I think this makes the most sense
  # as we are creating a new record
  post "/restaurants/:id/add_user" do
    user_id = params["user_id"]
    rest_id = params["id"]

    WaitingList.create(user_id: user_id, restarant_id: rest_id)
    redirect "restaurants/#{rest_id}"
  end

end
