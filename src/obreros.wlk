import obra.*
import uocra.*

class Obrero{
	var property jornalesAdeudados =0
	var property disponible
	method conLicencia(trueOrFalse){
		disponible = trueOrFalse
	}
	method jornada() {
		jornalesAdeudados++ 
	}
	method trabajar()
	method totalACobrar() 
		
	
}
class Albanil inherits Obrero {
	override method  trabajar(_deQueObra){
		_deQueObra.consumirLadrillos(100)  
	}
	override method totalACobrar() {
		return self.jornalesAdeudados() * uocra.jornalAlbanil()
	}
	
	
	
	
}


