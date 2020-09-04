import Foundation

/*  Práctica sobre "Clases y Estructuras" 🏋️‍♀️  */

// Ejercicios

/* ****************************************************** */
// 01. Definir e instanciar una Estructura
/* ****************************************************** */

// Crear una estructura, darle un nombre
// ✍️
struct Estructura {
    
}

// Definir sus miembros: sus propiedades y sus métodos
// Definir dos propiedades que describan qué contiene esta estructura
// ✍️
struct Audifonos {
    var marca: String = "Genéricos"
    var cantidaDiafragmas: Int = 2
    var tamañoDiafragmaMilimetros: Double = 12.9
    var potenciaMaximaMilliWatt: Int = 120
    var conexion: String = "Cable"
    var tamañoCableMillimetros: Int = 70
    func ayuda() {
        print("Esta estructura puede almacenar distintos tipos y marcas de audifonos")
    }
}

// Definir un método que describa qué puede hacer la estructura
// ✍️

// Crear una instancia a esta estructura
// ✍️

var audifonosEstudio = Audifonos()

// Acceder a sus dos propiedades y leer el valor que contienen
// ✍️
audifonosEstudio.marca
audifonosEstudio.cantidaDiafragmas

// Imprimr estos valores en consola
// ✍️
print("La marca de los audifonos es: \(audifonosEstudio.marca) y la cantidad de diafragmas fisicos que tiene son: \(audifonosEstudio.cantidaDiafragmas)")

// Ahora asignarle un nuevo valor a una de las propiedades
// ✍️
audifonosEstudio.marca = "Senheizer"

// Imprimir de nuevo el valor de esta propiedad observando cómo fue actualizado
// ✍️
print(audifonosEstudio.marca)
// Acceder al método de la estructura desde la instancia para que se ejecute
// ✍️
audifonosEstudio.ayuda()

// Crear otra variable y asignarle la instancia de la estructura creada anteriormente
// ✍️

var audifonosEconomicos = audifonosEstudio

// Asignarle otro valor a una de las propiedaes de esta nueva variable
// ✍️

audifonosEconomicos.marca = "Jabees"

// Imprimir, dentro de un mensaje, ese valor puesto recientemente en consola
// ✍️

print("Los audifonos de la marca \(audifonosEconomicos.marca) ofrecen una calidad decente de audio")


/* ****************************************************** */
// 02. Definir e instanciar una Clase
/* ****************************************************** */


// Crear una clase, darle un nombre
// ✍️
class Fruta {
    


// Definir sus miembros: sus propiedades y sus métodos
// Definir dos propiedades que describan qué contiene esta clase
// ✍️
    var nombre: String = "Manzana"
    var pesoGramos: Float = 130.8
// Definir un método que describa qué puede hacer la clase
// ✍️
    func ayuda(){
        print("Esta clase almacena instancias de frutas, en este caso \(nombre) y su peso en Gramos")
    }
}

// Crear una instancia a esta clase
// ✍️
var peras = Fruta()

// Acceder a sus dos propiedades y leer el valor que contienen
// ✍️
peras.nombre
peras.pesoGramos

// Imprimr estos valores en consola
// ✍️
print("la Instancia peras tiene un nombre definido como \(peras.nombre) y un peso definido de \(peras.pesoGramos)")

// Ahora asignarle un nuevo valor a una de las propiedades
// ✍️
peras.nombre = "Pera"

// Imprimir de nuevo el valor de esta propiedad observando cómo fue actualizado
// ✍️

print(peras.nombre)

// Acceder al método de la clase desde la instancia para que se ejecute
// ✍️

peras.ayuda()

// Crear otra variable y asignarle la instancia de la clase creada anteriormente
// ✍️

var mandarinas = peras

// Asignarle otro valor a una de las propiedaes de esta nueva variable
// ✍️

mandarinas.nombre = "Mandarina"

// Imprimir, dentro de un mensaje, ese valor puesto recientemente en consola
// ✍️

print("La instancia mandarinas toma el valor de la instancia peras y le cambia el nombre a: \(mandarinas.nombre)")


/* ************************************************************ */
// 03. Dar un ejemplo básico de "herencia" (usando Clases)
/* ************************************************************* */

// ✍️

class Carnes: Fruta {
    var tipoCorte: String = "Lomo Vetado"
}
var vacuno = Carnes()
vacuno.nombre = "Vacuno"
vacuno.pesoGramos = 5000
vacuno.tipoCorte = "Lomo Liso"

print("El tipo de carne es \(vacuno.nombre) con un peso de \(vacuno.pesoGramos) gramos y el tipo de corte es \(vacuno.tipoCorte)")
