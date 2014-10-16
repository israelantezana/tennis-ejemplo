Feature: Marcador
	Scenario: Iniciar marcador
 		Given inicio partida con dos jugadores
		Then deberia ver marcador "0" para Jugador1
		And deberia ver marcador "0" para Jugador2