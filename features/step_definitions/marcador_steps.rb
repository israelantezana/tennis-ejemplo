Given(/^inicio partida con dos jugadores$/) do
  visit '/'
  fill_in("jugador1", :with=>"nombre_jugador1")
  fill_in("jugador2", :with=>"nombre_jugador2")
  click_button("Jugar")
end

Then(/^deberia ver marcador "(.*?)" para Jugador(\d+)$/) do |marcador, nroJugador|
  last_response.body.should =~ /class="marcadorJugador#{nroJugador}">#{marcador}/m
  last_response.body.should have_selector('div', 
                                :class => "marcadorJugador#{nroJugador}",
                                :content => marcador)
end

When(/^jugador(\d+) anota$/) do |nroJugador|
  click_button("btnJugador#{nroJugador}")
end