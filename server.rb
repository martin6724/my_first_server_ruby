require 'sinatra'
require 'httparty'

set :public_folder, File.dirname(__FILE__) + '/static'

get '/urlsplit/:kitty' do
	url = 'https://google.com:443/?name=wyncode&day=friday#foo'
	return params[:kitty] + "\n"
	# some parts of a URL
	# scheme
	# domain
	# port
	# path
	# query string
	# fragment
	pieces = url.split('://')
	scheme, *rest = pieces
	second_piece, = rest
	third, frag = second_piece.split('#')
	{
		scheme: scheme,
		rest: rest,
		third: third,
		frag: frag,
	}.to_json

end

get '/party' do
	url = 'http://example.com'
	kitty = HTTParty.get(url)
	kitty.body
end

get '/' do
	return "Hello, from Heroku."
end
