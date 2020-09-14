import Foundation

// Clase 10

// Extensions

// Keywords: extension

/*
 Index:
 - Extension Syntax
 - Computed Properties
 - Initializers
 - Methods
 - Subscripts
 - Nested Types
 */

/* ➡️ Las "extensiones" en Swift añaden nueva funcionalidad a una clase, estructura, enumeración o protocolo. Esto incluye la habilidad de extender tipos de los cuales no tienes acceso al código fuente original.
*/

/* ➡️ En Swift también puedes extender un protocolo para proveerle implementaciones a sus requerimientos o para añadir funcionalidad extra de la cual los tipos conformados puedan adquirir esa ventaja.
*/

/* **************************************************************************** */
// Extension Syntax
/* **************************************************************************** */

struct SomeType {
    // la definición de la estructura va aquí
}

extension SomeType {
    // la nueva funcionalidad para agregar a "SomeType" va aquí
}

/* **************************************************************************** */
// Compueted Properties
/* **************************************************************************** */

/*
 Las extensiones pueden añadir propiedades computadas a los Tipos ya existentes.
 En este ejemplo se le agregan cinco propiedades computadas de instancia al tipo 'Double'(*)
 para proveerle un soporte básico para trabajar con unidades de distancia.
 
 (*) Recordad que 'Double' es un tipo ya implementado desde la "Librería Estándar
 de Swift". Es decir, es un Tipo "incorporado previamente en el lenguaje".
*/

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let distancia: Double = 30
distancia.km
distancia.ft

/* **************************************************************************** */
// Initializers
/* **************************************************************************** */

/*
 Las extensiones pueden añadir nuevos inicializadores a los Tipos existentes.
 Esto nos permite extender otros tipos para que acepten tus propios parámetros de
 inicialización, o para proveer inicializaciones adicionales como opción a las
 implementaciones originales del tipo.
*/

// Un ejemplo:
// Definimos una estructura llamada 'Size'
// que contiene dos propiedades, 'width' y 'height'
// (esta estructura representa un tamaño)
struct Size {
    var width = 0.0, height = 0.0
}

// Definimos una estructura llamada 'Point'
// que contiene dos propiedades, 'x' y 'y'
// (esta estructura representa un punto en una posición determinada)
struct Point {
    var x = 0.0, y = 0.0
}

// Y ahora definimos una estructura llamada 'Rect'
// que contiene dos propiedades, 'origin' y 'size'
// (esta estructura representa un rectángulo con un tamaño y un punto de origen)
struct Rect {
    var origin = Point()
    var size = Size()
}

// Debido a que 'Rect' es una estructura que provee valores por defecto a todas sus propiedades, este tipo recibe un inicializador por defecto (a) y también un inicializador para inicializar los valores de sus propiedades al instanciar la estructura (b).

// a. Inicializador por defecto
let defaultRect = Rect()

// b. Inicializador de sus miembros
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))

// Con las extensiones podemos extender la estructura 'Rect' para proveerle un inicializador ADICIONAL que tome un tamaño específico y un punto en el medio del tamaño. Es decir, podemos proveerle un inicializador personalizado.

// Extendemos la estructura 'Rect'
extension Rect {
    // Le agregamos el inicializador personalizado
    // para que cuando se instancie esta la estructura 'Rect'
    // se configure automáticamente un rectángulo de cualquier tamaño
    // con un punto en su exacto medio.
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

// Ahora instanciamos 'Rect' y usamos este nuevo inicializador creado
// en la extensión
let centerRect = Rect(center: Point(x: 0.0, y: 0.0),
                      size: Size(width: 3.0, height: 3.0))


