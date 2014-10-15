Feature: Bienvenida
	Scenario: Bienvenida
		When ingreso a la pagina principal
		Then deberia ver el mensaje "Bienvenido a Tennis Scorer"
		
	Scenario: Imagen de bienvenida
		When ingreso a la pagina principal
		Then deberia ver la imagen "tennis_rackets.jpg"