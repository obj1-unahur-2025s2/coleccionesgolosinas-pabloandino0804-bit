class Bombon {
  var peso = 15
  method precio() = 15

  method peso() = peso
  
  method sabor() = "frutilla"
  
  method contieneGluten() = false

  method recibirMordisco() {
    peso = (peso * 0.8) - 1
  }
}

class Alfajor {
  var peso = 300
  method precio() = 12

  method peso() = peso
  
  method sabor() = "chocolate"
  
  method contieneGluten() = true

  method recibirMordisco() {
    peso = peso * 0.8
  }
}

class Caramelo {
  var peso = 5
  method precio() = 1

  method peso() = peso
  
  method sabor() = "frutilla"
  
  method contieneGluten() = false

  method recibirMordisco() {
    peso = peso - 1
  }
}

class Chupetin {
  var peso = 7
  method precio() = 2

  method peso() = peso
  
  method sabor() = "naranja"
  
  method contieneGluten() = false

  method recibirMordisco() {
    if (peso < 2) {
      peso = peso * 0.1
    }
  }
}

class Oblea {
  var peso = 250
  method precio() = 5

  method peso() = peso
  
  method sabor() = "vainilla"
  
  method contieneGluten() = false

  method recibirMordisco() {
    if (peso > 70) {
      peso = peso * 0.5
    }
    else {
      peso = peso * 0.25
    }
  }
}

class Chocolatin {
  const property peso
  var pesoGramo = peso

  method precio() = 0.50 * peso

  method pesoGramo() = pesoGramo
  
  method sabor() = "chocolate"
  
  method contieneGluten() = true

  method recibirMordisco() {
    pesoGramo = pesoGramo - 2
  }
}

class GolosinaBañada {
  var pesoBañado = 4
  var property golosinaBase
  method precio() = golosinaBase.precio() + 2

  method peso() = golosinaBase.peso() + pesoBañado

  method sabor() = golosinaBase.sabor()

  method contieneGluten() = false

  method recibirMordisco() {
    golosinaBase.recibirMordisco()
    pesoBañado = pesoBañado - 2
  }
}

class Patilla {
  const peso = 5
  var gusto = "chocolate"
  var contieneGluten

  method tieneGluten() {
    contieneGluten = true
  }

  method noTieneGluten() {
    contieneGluten = false
  }
  
  method precio() {
    return if (not contieneGluten) 7 else 10
  }

  method peso() = peso

  method gusto() = gusto

  method contieneGluten() = contieneGluten

  method recibirMordisco() {
    if (gusto == "frutilla") {
      gusto = "chocolate"
    }
    else if (gusto == "chocolate") {
      gusto = "naranja"
    }
    else {
      gusto = "frutilla"
    }
  }
}

object mariano {
  const golosinas = []
  method golosinas() = golosinas

  method comprar(unaGolosina) {
    golosinas.add(unaGolosina)
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
}