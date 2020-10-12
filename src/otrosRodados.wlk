
import wollok.game.*

class Corsa{
	var property capacidad = 4
	var property velocidad = 150
	var property color 
	var property peso = 1300
	
	var property image = "autitorojo.png"
	var property position = game.at(0,0)
	var property posicionGuardada = []
	
	method pasoPor(posicion) = posicionGuardada.contains(posicion)
	method pasoPorFila(numero) = posicionGuardada.any({ posicion => posicion.x() == numero })
	method recorrioFilas(listaDeNumeros) = listaDeNumeros.all({ x => self.pasoPorFila(x) })
	
	method moverIzquierda(){self.position(self.position().left(1)) posicionGuardada.add(self.position())}
	method moverDerecha(){self.position(self.position().right(1)) posicionGuardada.add(self.position())}
	method moverArriba(){self.position(self.position().up(1)) posicionGuardada.add(self.position())}
	method moverAbajo(){self.position(self.position().down(1)) posicionGuardada.add(self.position())}
}

class Kwid{
	const property color = azul
	var property tanqueAdicional = false
	
	method capacidad() = if(tanqueAdicional) {3} else {4}
	method velocidad() = if(tanqueAdicional) {120} else {110}
	method peso() = if(tanqueAdicional) {1350} else {1200}
}

class AutoEspecial{
	var property capacidad = null
	var property velocidad = null
	var property color = null
	var property peso = null
}

object rojo{}
object verde{}
object negro{}
object azul{}
object beige{}
object blanco{}