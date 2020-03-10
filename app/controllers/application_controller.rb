class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set(:views, 'app/views')

  #USERS

  get "/users" do
    erb :"users/index"
  end

  get "/users/new" do
    erb :"users/new"
  end

  post "/users" do

  end

  get "/users/:id" do
    erb :"users/show"
  end

  #RESTAURANTS

  get "/restaurants" do
    erb :"restaurants/index"
  end

  get "/restaurants/new" do
    erb :"restaurants/new"
  end

  post "/restaurants" do

  end

  get "/restaurants/:id" do
    erb :"restaurants/show"
  end

  # I think this makes the most sense
  # as we are creating a new record
  post "/restaurants/add_user" do

  end

end
