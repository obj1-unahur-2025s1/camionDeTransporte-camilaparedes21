import cosas.*

object camion {
    var carga = []
    var tara = 1000
    var pesoMaximo = 2500
    
    method cargar(cosa) {
      carga.add(cosa)
    }

    method descargar(cosa) {
      carga.remove(cosa)
    }
    method cargaTotal(){
      return
      carga.sum({c=>c.peso()})}
    method pesoTotal()= 1000+ self.cargaTotal()
    method pesoConNumeroPares() {
      return
      carga.all({c=> c.peso()%2==0})}
    
    method cosaConUnPeso(peso) {
      return
      carga.any({c => c.peso() == peso})
    }
    method primerCosaPeligrosa(nivel) {
      carga.find ({c=>c.nivelDePeligrosidad() == nivel})
    }

    method cosasConUnNivelDePeligrosidad(nivel) {
      carga.filter({c=>c.nivelDePeligrosidad()>nivel})
    }
     method cosasMasPeligrosas(cosa){
        self.cosasConUnNivelDePeligrosidad(cosa.nivelDePeligrosidad())
     }
    method excedidoDePeso() {
      return
      self.pesoTotal()> pesoMaximo
    }
    method puedeCircular(nivelMaximo) {
      return
      !self.excedidoDePeso() && carga.all({c=>c.nivelDePeligrosidad() >nivelMaximo})
    }

   method tieneAlgoQuePesaEntre(min,max) = carga.any({c=>c.peso().between(min, max)})
   method cosaMasPesada() = carga.max({c=>c.peso()})
}

