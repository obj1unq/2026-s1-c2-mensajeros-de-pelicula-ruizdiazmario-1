object paquete {
  var estaPago = false

  method pagarPaquete() {
	estaPago = true
  }

  method puedeSerEntregadoPor(mensajero, destino) {
    return estaPago && mensajero.puedeIrA(destino)
  }
}
object brooklyn {
  method permiteA(mensajero) {
    return mensajero.peso() <= 1000
  }
}

object matrix {
  method permiteA(mensajero) {
    return mensajero.puedeLlamar()
  }
}

object jeanGray {
  
  method peso() {
    return 65
  } 
  
  method puedeLlamar() {
    return true
  } 

  method puedeIrA(destino) {
    return destino.permiteA(self)
  }
}

object neo {
  var tieneCredito = false

  method peso() {
    return 0
  } 
  
  method puedeLlamar() {
    return tieneCredito
  }

  method darleCredito() {
	  tieneCredito = true
  }

  method puedeIrA(destino) {
    return destino.permiteA(self)
  }
}

object saraConnor {
  const pesoPropio = 70
  var vehiculo = null

  method peso() {
    return pesoPropio + vehiculo.peso()
  }

  method asignarVehiculo(unVehiculo) {
	  vehiculo = unVehiculo
  }

  method puedeLlamar() {
    return false
  } 

  method puedeIrA(destino) {
    return destino.permiteA(self)
  }
}

object moto {

  method peso() {
    return 100
  }
}

object camion {
  var acoplados = 0

  method agregarAcoplados(cantidadDeAcoplados) {
	  acoplados = acoplados + cantidadDeAcoplados
  }

  method peso() {
    return 500 + (acoplados * 500)
  }
}