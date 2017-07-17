require 'sinatra'
require 'uri'

get ("/") do
	erb :home
end

get ("/:title") do
	redirect "/"
end