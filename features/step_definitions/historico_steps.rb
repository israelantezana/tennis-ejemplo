Given(/^Se termina una partida con ganador 'jugador(\d+)'$/) do |nroJugador|
  visit '/'
  fill_in("jugador1", :with=>"nombre_jugador1")
  fill_in("jugador2", :with=>"nombre_jugador2")
  click_button("Jugar")
  click_button("btnJugador#{nroJugador}")
  click_button("btnJugador#{nroJugador}")
  click_button("btnJugador#{nroJugador}")
  click_button("btnJugador#{nroJugador}")
  #save_and_open_page
end

When(/^inicio nueva partida$/) do
  click_button("Volver a Empezar")
end

Then(/^deberia ver 'Jugador (\d+) Ganó"$/) do |nroJugador|
  last_response.body.should include("Jugador #{nroJugador} Ganó")
end
