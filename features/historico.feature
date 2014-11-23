Feature: Historial de ultimas 3 partidas

Scenario: Mostrar ultima partida termina
	Given Se termina una partida con ganador 'jugador1'
	When inicio nueva partida
	Then deberia ver "Jugador 1 Ganó"
	
	Given Se termina una partida con ganador 'jugador1'
	And Se termina una partida con ganador 'jugador2'
	When inicio nueva partida
	Then deberia ver "Jugador 2 Ganó"
	And deberia ver 'Jugador 1 Ganó"
