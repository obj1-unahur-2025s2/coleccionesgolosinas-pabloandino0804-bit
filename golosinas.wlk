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
  var peso 
  const pesoPrecio

  method pesoPrecio() = pesoPrecio

  method precio() = 0.50 * pesoPrecio

  method peso() = peso
  
  method sabor() = "chocolate"
  
  method contieneGluten() = true

  method recibirMordisco() {
    peso = peso - 2
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

}