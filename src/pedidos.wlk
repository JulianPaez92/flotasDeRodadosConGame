import otrosRodados.*
import trafic.*


class Pedidos {
	var property distancia
	var property tiempoMaximo
	var property cantidadPasajeros
	var property coloresIncompatibles = []
	
	method velocidadRequerida() = distancia / tiempoMaximo
	method satisfacePedido(auto) = (auto.velocidad() - self.velocidadRequerida()) >= 10 and auto.capacidad() >= self.cantidadPasajeros() and coloresIncompatibles.all({ color=>color != auto.color() })
	method acelerar(){ tiempoMaximo -= 1 }
	method relajar(){ tiempoMaximo += 1 }
}
