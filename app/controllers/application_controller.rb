class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set(:views, 'app/views')

  get '/restaurants' do
    @restaurants = Restaurant.all
    erb :restaurants
  end

  get '/users' do
    erb :users
  end

  get '/restaurants/new' do
    erb :restaurants_new
  end

  post '/restaurants' do
    x = Restaurant.create(name: params[:name], cuisine: "Mexican", city: "New York", rating: params[:ratings], address: params[:address])
    redirect "/restaurants"
  end

  get '/users/new' do
    erb :users_new
  end

  get '/restaurants/:id' do
    @restaurant = Restaurant.find(params[:id])
    erb :restaurants_show
  end

end
