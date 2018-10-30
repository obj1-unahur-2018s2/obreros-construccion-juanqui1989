import obreros.*

class Obra {

	var obrerosDisponibles = #{}
	var property efectivo = 0
	var property jornada = 0
	var property ladrillos = 200
	var property canios = 200
	var property cintas = 200
	var property cables = 200
	var property fosforos = 200
	var property arandelas = 200

	method agregarObreroAPlantilla(_obrero) {
		if (_obrero.disponible()) {
			obrerosDisponibles.add(_obrero)
		}
	}

	method quitarObrerosAPlantilla(_obrero) {
		obrerosDisponibles.remove(_obrero)
	}

	method cuentaCon(_obrero) {
		return obrerosDisponibles.contains(_obrero)
	}

	method registrarJornadaLaboral() {
		obrerosDisponibles.forEach({ obrero => obrero.trabajar(self)})
		obrerosDisponibles.forEach({ obrero => obrero.jornada()})
		jornada++
	}

	method importeAdeudado() {
		return obrerosDisponibles.sum({ obrero => obrero.totalACobrar() })
	}

	method pagarleALosObreros() {
		efectivo = efectivo - self.importeAdeudado()
		obrerosDisponibles.forEach({ obrero => obrero.jornalesAdeudados(0)})
		
	}

	method consumirLadrillos(cuanto) {
		ladrillos -= cuanto
	}

	method consumirCanios(cuanto) {
		canios -= cuanto
	}

	method consumirCintas(cuanto) {
		cintas -= cuanto
	}

	method consumirCables(cuanto) {
		cables -= cuanto
	}

	method consumirFosforos(cuanto) {
		fosforos -= cuanto
	}

	method consumirArandelas(cuanto) {
		arandelas -= cuanto
	}

/*method paredLevantada(cantidadDeLadrillos)
 * method instalacionDeAgua(metrosDeCanos)
 * method instalacionElectrica(metrosDeCable)
 * method instalacionDeGas(metrosDeCano)
 */
}

