require 'sinatra'

get '/' do
  erb :inicio
end

post '/jugar' do
  @jugador1 = params[:jugador1]
  @jugador2 = params[:jugador2]
  erb :jugar
end