require 'sinatra'
require './lib/scorer'

scorer = Scorer.new

get '/' do
  scorer = Scorer.new
  erb :inicio
end

post '/jugar' do
  @jugador1 = params[:jugador1]
  @jugador2 = params[:jugador2]
  @puntaje1 = scorer.marcador_de_jugador(1)
  @puntaje2 = scorer.marcador_de_jugador(2)
  erb :jugar
end

post '/anotar1' do
  scorer.anota_jugador(1)
  @puntaje1 = scorer.marcador_de_jugador(1)
  @puntaje2 = scorer.marcador_de_jugador(2)
  erb :jugar
end

post '/anotar2' do
  scorer.anota_jugador(2)
  @puntaje1 = scorer.marcador_de_jugador(1)
  @puntaje2 = scorer.marcador_de_jugador(2)
  erb :jugar
end