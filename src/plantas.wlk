class Maiz {

	var property posicion
	var property estado = 0
	const property estados = [ "corn_baby.png", "corn_adult.png" ]
	var property imagen = estados.first()
	const property precio = 150

	method teSembraron(alguien) {
		imagen = estados.first()
		posicion = alguien.posicion().clone()
	}

	method teRegaron() {
		estado = if (estado >= estados.size() - 1) estado else +1
		imagen = estados.get(estado)
	}

	method teCosecharon() {
		game.removeVisual(self)
	}

}

class Trigo {

	var property posicion
	var property estado = 0
	var property precio
	var property imagen

	method teSembraron(alguien) {
		imagen = "wheat_" + estado.toString() + ".png"
		posicion = alguien.posicion().clone()
	}

	method teRegaron() {
		estado = (estado + 1) % 4
		imagen = "wheat_" + estado.toString() + ".png"
		precio = (estado - 1) * 100
	}

	method teCosecharon() {
		if (estado > 1) {
			game.removeVisual(self)
		}
	}

}

class Tomaco {

	var property posicion
	const property imagen = "tomaco.png"
	const property precio = 80

	method teSembraron(alguien) {
		posicion = alguien.posicion().clone()
	}

	method teRegaron() {
		if (posicion.y() < 9) {
			posicion = posicion.up(1)
		} else {
			posicion = posicion.down(9)
		}
	}

	method teCosecharon() {
		game.removeVisual(self)
	}

}

