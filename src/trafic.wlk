import otrosRodados.*

object trafic{
	var property interior = null
	var property motor = null
	method capacidad() = interior.capacidad()
	method velocidad() = motor.velocidad()
	method color() = blanco
	method peso() = 4000 + interior.peso() + motor.peso()
}

object interiorComodo{
	const property capacidad = 5
	const property peso = 700
}

object interiorPopular{
	const property capacidad = 12
	const property peso = 1000	
}

object motorPulenta{
	const property peso = 800
	const property velocidad = 130
}

object motorBataton{
	const property peso = 500
	const property velocidad = 80
}
