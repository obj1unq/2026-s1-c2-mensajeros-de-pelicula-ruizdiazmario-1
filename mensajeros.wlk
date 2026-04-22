object paquete {
  var estaPago = false

  method pagar() {
	estaPago = true
  }

  method puedeSerEntregadoPor(mensajero, destino) {
    return estaPago && destino.permiteA(mensajero)
  }
}

object brooklyn {
  const pesoMaximoPermitido = 1000

  method permiteA(mensajero) {
    return mensajero.peso() <= pesoMaximoPermitido
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
}

object saraConnor {
  const pesoPropio = 70
  var vehiculo = null

  method peso() {
    if (vehiculo == null) {
      return pesoPropio
    } else {
      return pesoPropio + vehiculo.peso()
    }
  }

  method asignarVehiculo(unVehiculo) {
	  vehiculo = unVehiculo
  }

  method puedeLlamar() {
    return false
  } 
}

object moto {

  method peso() {
    return 100
  }
}

object camion {
  var acoplados = 0
  const toneladasAdicionales = 500

  method agregarAcoplados(cantidadDeAcoplados) {
	  acoplados = acoplados + cantidadDeAcoplados
  }

  method peso() {
    return 500 + (acoplados * toneladasAdicionales)
  }
}