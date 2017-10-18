require "sinatra"
require "json"
require 'data_mapper'
require 'pry'

DataMapper.setup(:default, 'sqlite:restaurantapp.db')
set :bind, '127.0.0.1'
set :port, '5000'
set :views, settings.root + '/html'

class Restaurant
  include DataMapper::Resource

  property :id, Serial
  property :location, Text, required: true
  property :name, Text, required: true

  has n, :orders, :constraint => :destroy
end
class Order
  include DataMapper::Resource

  property :id, Serial
  property :description, Text, required: true
  property :restaurant_id, Integer, required: true

  belongs_to :restaurant
end
DataMapper.finalize
DataMapper.auto_upgrade!

get "/" do
  # restaurant = Restaurant.get(1)
  # "Hello World #{restaurant.name}"
  # restaurants = Restaurant.all
  # restaurants.each do |restaurant|
  #   restaurant.name
  # end
  # erb(:index, locals: {restaurants: restaurants})
  erb(:index)
end

get "/restaurants/create" do

end
post "/restaurants" do

end
get "/restaurants/:id/edit" do

end
put "/restaurants/:id" do

end
delete "/restaurants/:id" do

end
post "/orders" do
end
get "/orders/:id/edit" do
end
put "/orders/:id" do
end
delete "/orders" do
end
