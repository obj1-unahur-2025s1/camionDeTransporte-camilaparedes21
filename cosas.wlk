

object knightRider {
  method peso() = 500
  method nivelDePeligrosidad() = 10
}

object bumblebee {
var estaComoRobot = false
    method estaComoRobot() = estaComoRobot
    method transformarseEnAuto() {estaComoRobot = false}
    method transformarseEnRobot() {estaComoRobot = true}
    method peso() = 800
    method peligrosidad() = if(estaComoRobot) 30 else 15


}

object paqueteDeLadrillos {
  var cantidad = 0
  method cantidad(unaCantidad) {cantidad = unaCantidad}
  method peso()= 2* cantidad
  method nivelDePeligrosidad() = 2
    
  }

  object arenaAGranel {
    var property peso = 0
    method nivelDePeligrosidad() =1
  }

object bateriaAntiaerea {
  var estaConMisiles = false
   method cargarMisiles() {estaConMisiles = true}
    method descargarMisiles() {estaConMisiles = false}
    method peso() = if(estaConMisiles) 300 else 200
    method nivelDePeligrosidad() = if(estaConMisiles) 100 else 0
}
object contenedorPortuario {
  var cosas = []

    method agregar(cosa) {
        cosas.add(cosa)
    }

    method limpiar() {
        cosas = []
    }
    method agregarVariasCosas(unaListaDeCosas) {cosas.addAll(unaListaDeCosas)}
    method peso() = 100 + self.pesoDeLasCosas()
    method pesoDeLasCosas() = cosas.sum({cosa => cosa.peso()})
    method nivelDePeligrosidad() {
    if(cosas.isEmpty()) 0 else cosas.max({c=>c.peligrosidad()}).peligrosidad()
    }}


object residuosRadioactivos {
  var property  peso = 0
  method nivelDePeligrosida() = 200
}

object embalaje {
  var property cosaEnvueta = arenaAGranel
    method peso() = cosaEnvueta.peso()
    method nivelDePeligrosidad() = cosaEnvueta.nivelDePeligrosidad() / 2
}