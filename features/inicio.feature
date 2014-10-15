Feature: Inicio de Juego
	Scenario: Ingresar nombres
		Given estoy en la pagina principal
		When ingreso "Federer" en el campo "jugador1"
		And ingreso "Nadal" en el campo "jugador2"
		Then deberia ver el mensaje "Bievenido"
		And deberia ver "Federer vs Nadal"