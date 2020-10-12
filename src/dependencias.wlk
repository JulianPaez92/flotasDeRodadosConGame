import trafic.*
import otrosRodados.*
import pedidos.*

class Dependencias{
	var property empleados
	var property flotaDeRodados = []
	var property pedidos = []
	
	method agregarAFlota(rodado) { flotaDeRodados.add(rodado) }
	method quitarDeFlota(rodado) { flotaDeRodados.remove(rodado) }
	method pesoTotalFlota() = flotaDeRodados.sum({ x => x.peso() })
	method estaBienEquipada() = flotaDeRodados.all({ x => x.velocidad() >= 100}) and flotaDeRodados.size() >= 3
	method capacidadTotalEnColor(color) = flotaDeRodados.filter({ x => x.color() == color }).sum({ x => x.capacidad() })
	method colorDelRodadoMasRapido() = flotaDeRodados.max({ x => x.velocidad() }).color()
	method capacidadFaltante() = 0.max(empleados - flotaDeRodados.sum({ x => x.capacidad() }))
	method esGrande() = empleados >= 40 and flotaDeRodados.size() >= 5
	
	method totalPasajeros() = pedidos.sum({ x=>x.cantidadPasajeros() })
	method satisfacePedido(pedido) = flotaDeRodados.any({auto => pedido.satisfacePedido(auto)})
	method pedidosQueNoPuedeSatisfacer() = pedidos.filter({pedido => not self.satisfacePedido(pedido)})
	method esIncompatibleEnTodos(color) = pedidos.all({ x => x.coloresIncompatibles().contains(color) })
	method relajarPedidos(){ pedidos.forEach({ x=>x.relajar() }) }
}