//Parte 2
import golosinas.*
object mariano {
  const golosinas = #{}
  const golosinasQuCompro = #{}
  method golosinas() = golosinas

  method golosinasQuCompro() = golosinasQuCompro
  // Funciones
  method comprar(unaGolosina) {
    golosinas.add(unaGolosina)
    golosinasQuCompro.add(unaGolosina)
  }

  method desechar(unaGolosina) {
    golosinas.remove(unaGolosina)
  }

  method cantidadDeGolosinas() = golosinas.size()

  method tieneLaGolosina(unaGolosina) {
    return golosinas.contains(unaGolosina)
  }

  method probarGolosinas() {
    golosinas.forEach({golosina => golosina.recibirMordisco()})
  }

  method hayGolosinaSinTACC() {
    return golosinas.any({golosina => !golosina.contieneGluten()})
  }

  method preciosCuidados() {
    return golosinas.all({golosina => golosina.precio() <= 10})
  }

  method golosinaDeSabor(unSabor) = golosinas.find({golosina => golosina.sabor() == unSabor})

  method golosinasDeSabor(unSabor) = golosinas.filter({golosina => golosina.sabor() == unSabor})

  method sabores() {
    const saboresGolosinas = #{}
    golosinas.forEach({golosina => saboresGolosinas.add(golosina.sabor())})
    return saboresGolosinas
  }

  method golosinaMasCara() = golosinas.max({golosina => golosina.precio()})

  method pesoGolosinas() = golosinas.sum({golosina => golosina.peso()})

  // Estadisticas
  method golosinasFaltantes(golosinasDeseadas) {
    return golosinasDeseadas.filter({unaGolosina => !golosinas.contains(unaGolosina)})
  }

  method gustosFaltantes(gustosDeseados) {
    const gustos = self.sabores()
    return gustosDeseados.filter({unGusto => !gustos.contains(unGusto)})
  }

  method gastoEn(sabor) = self.golosinasDeSabor(sabor).sum({unaGolosina => unaGolosina.precio()})

  method saborMasPopular(){
  }

  method saborMasPesado() = golosinas.max({golosina => golosina.peso()}).sabor()

  method comproYDesecho(golosina) = golosinasQuCompro.contains(golosina) and !golosinas.contains(golosina)
}