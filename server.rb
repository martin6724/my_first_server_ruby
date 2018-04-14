require 'sinatra'
set :public_folder, File.dirname(__FILE__) + '/static/index.html'

get '/' do
html :index
end


get "/sinatra" do
  "Hello Sinatra"
end
