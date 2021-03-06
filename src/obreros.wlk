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
	//template 
	method totalACobrar() {
		return jornalesAdeudados * self.jornalPactado()
	}
	method jornalPactado()

}
 
		
	

class Albanil inherits Obrero {
	override method  trabajar(_deQueObra){
		_deQueObra.consumirLadrillos(100)  
		_deQueObra.levantarPared(3)
	}
	override method jornalPactado() {
		return  uocra.jornalAlbanil()
	}
	
}

class Gasista inherits Obrero {
	override method trabajar(_deQueObra) {
		_deQueObra.consumirCanios(3)
		_deQueObra.consumirFosforos(20)
		_deQueObra.instalarCaniosDeGas(3)
	}
	override method jornalPactado() {
		return  uocra.jornalEspecialistasBanioCocina()
	}

}

class Plomero inherits Obrero {
	override method trabajar(_deQueObra){
		_deQueObra.consumirCanios(10)
		_deQueObra.consumirArandelas(30)
		_deQueObra.instalarCaniosDeAgua(3)
	}
	override method jornalPactado(){
		return uocra.jornalEspecialistasBanioCocina()
	}
	
}	
class Electricista inherits Obrero {
	override method trabajar(_deQueObra){
		_deQueObra.consumirCable(4)
		_deQueObra.consumirCintas(1)
		_deQueObra.colocarCable(3)
	}	
	override method jornalPactado() {
		return  uocra.jornalElectricista()
	}
	
}	



