require 'rubygems'

require 'bundler/setup'

require 'sinatra'

get '/' do
  "hello world"
end

get '/about' do
  'A little about me.'
end

get '/hello/:name' do
  params[:name]
end

get '/form' do
  erb :form
end

post '/form' do
  "You said '#{params[:message]}'"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  params[:secret].reverse
end

get '/decrypt/:secret' do
  params[:secret].reverse
end

not_found do
  halt 404, 'page not found'
end