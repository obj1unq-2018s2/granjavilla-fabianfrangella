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

	method regar(plant) {
		if (!game.colliders(self).isEmpty()){
			plant.teRegaron()		
			} else {
				throw new Exception ( "no tengo nada para regar ")
			}

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

