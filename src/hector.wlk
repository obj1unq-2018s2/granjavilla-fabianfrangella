object hector {
	
	var property posicion = game.at(2,2)
	var property imagen = "player.png"
	var property caja = 0
	var property cosecha = []
	
	method sembrar(plant){
		plant.teSembraron(self)
		game.addVisual(plant)
	}
	
	method regar(plant){
		plant.teRegaron()
	}
	
	method cosechar(plant){
		cosecha.add(plant)
	}
	
	method vender(plant){
		caja.add(plant.precio())
		cosecha.remove(plant)
	}
	
}
