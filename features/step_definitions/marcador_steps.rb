Given(/^inicio partida con dos jugadores$/) do
  visit '/'
  fill_in("jugador1", :with=>"nombre_jugador1")
  fill_in("jugador2", :with=>"nombre_jugador2")
  click_button("Jugar")
end

Then(/^deberia ver marcador "(.*?)" para "(.*?)"$/) do |puntaje, jugador|
  last_response.body.should =~ /class="marcador#{jugador}">0/m  
end


Then(/^deberia ver marcador "(.*?)" para Jugador(\d+)$/) do |marcador, nroJugador|
  last_response.body.should =~ /class="marcadorJugador#{nroJugador}">0/m
end