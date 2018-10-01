class Maiz {

	var property posicion
	var property estado = 0
	const property estados = [ "corn_baby.png", "corn_adult.png" ]
	var property imagen = estados.first()

	method teSembraron(alguien) {
		imagen = estados.first()
		posicion = alguien.posicion().clone()
	}

	method teRegaron() {
		estado = if (estado >= estados.size() - 1) estado else +1
		imagen = estados.get(estado)
	}

}

class Trigo {

	var property posicion
	var property estados = [ "wheat_0.png", "wheat_1.png", "wheat_2.png", "what_3.png" ]
	var property estado = 0
	var property imagen = estados.first()

	method teSembraron(alguien) {
		imagen = estados.first()
		posicion = alguien.posicion().clone()
	}

	method teRegaron() {
		estado = if (estado >= estados.size() - 1) 0 else +1
		imagen = estados.get(estado)
	}

}

class Tomaco {

	var property posicion
	var property estado = 0
	var property estados = []
	var property imagen = estados.first()

	method teSembraron(alguien) {
		imagen = estados.first()
		posicion = alguien.posicion().clone()
	}

	method teRegaron() {
		
	}

}

