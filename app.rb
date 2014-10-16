require 'sinatra'

get '/' do
  erb :inicio
end

post '/jugar' do
  erb :jugar
end