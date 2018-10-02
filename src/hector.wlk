object hector {

	var property posicion = game.at(2, 2)
	var property imagen = "player.png"
	var property caja = 0
	var property cosecha = []

	method sembrar(plant) {
		if (game.colliders(self).size() < 1) {
			plant.teSembraron(self)
			game.addVisual(plant)
		}
	}

	method puedeRegar(cantidad) {
		if (cantidad <= 0) {
			throw new Exception ("No tengo nada para regar :(")
		}
	}

	method regar(plant) {
		self.puedeRegar(game.colliders(self).size())
		plant.teRegaron()
	}

	method cosechar(plant) {
		cosecha.add(plant)
		plant.teCosecharon()
	}

	method vender() {
		caja += cosecha.sum{ plant => plant.precio() }
		cosecha.clear()
	}

}

class UserException inherits Exception {

}

