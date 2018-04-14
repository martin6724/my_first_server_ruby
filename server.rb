require 'sinatra'
set :public_folder, File.dirname(__FILE__) + '/static/index.html'

get '/' do
  "Hello world"
end


get "/sinatra" do
  "Hello Sinatra"
end
