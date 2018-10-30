import obra.*
import uocra.*

class Obrero{
	var property jornalesAdeudados =0
	var property disponible = true
	method disponibilidad(trueOrFalse){
		disponible = trueOrFalse
	}
	method jornada() {
		jornalesAdeudados++ 
	}
	method trabajar(_deQueObra)
	//method totalACobrar()

}
 
		
	

class Albanil inherits Obrero {
	override method  trabajar(_deQueObra){
		_deQueObra.consumirLadrillos(100)  
	}
	override method totalACobrar() {
		return self.jornalesAdeudados() * uocra.jornalAlbanil()
	}
	
}

class Gasista inherits Obrero {
	override method trabajar(_deQueObra) {
		_deQueObra.consumirCanios(3)
		_deQueObra.consumirFosforos(20)
	}
}

class Plomero inherits Obrero {
	override method trabajar(_deQueObra){
		_deQueObra.consumirCanios(10)
		_deQueObra.consumirArandelas(30)
	}
}	
class Electricista inherits Obrero {
	override method trabajar(_deQueObra){
		_deQueObra.consumirCable(4)
		_deQueObra.consumirCintas(1)
	}	
}	



