
object galvan {
	var sueldo = 150000
	var dinero= 0
	var gastos = 0
	method sueldo(nuevoSueldo){
		sueldo = nuevoSueldo
	}
	method sueldo(){
		return sueldo
	}
	
	method cobrarSueldo(){
		return dinero + self.sueldo()
	}
	
	method gastar(cuanto){
		gastos = gastos + cuanto
	}
	
	method totalDeuda(){
		return gastos
	}
	
	method totalDinero(){
		dinero = self.cobrarSueldo() - self.totalDeuda()
	}
	
	method pagarDeuda(){
		dinero = dinero - self.totalDeuda()
	}
}

object baigorria{
	var precioPorEmpanada = 150
	var cantidadEmpanadasVendidas = 0
	var total= 0
	method venderEmpanadas(cuantas){
		cantidadEmpanadasVendidas = cantidadEmpanadasVendidas + cuantas
	}
	
	method sueldo(){
		return cantidadEmpanadasVendidas * precioPorEmpanada
	}
	
	method cobrarSueldo() {
		total = total + self.sueldo()
	}
}

object gimenez{
	var fondo = 300000
	
	method dinero(){
		return fondo
	}
	 
	method pagarSueldo(empleado){
		fondo = fondo - empleado.sueldo()
		empleado.cobrarSueldo()
	}
}