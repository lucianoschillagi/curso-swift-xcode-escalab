import Foundation
import UIKit

// Clase 8

// Clases y Estructuras

/*
 Index:
 - Comparing Structures and Classes
 - Structures and Enumerations Are Value Types
 - Classes Are Reference Types
 */

// Keywords: class, struct, var, let, func

/* ➡️ Las Estructuras y las Clases son los principales "ladrillos" con los que construimos nuestras apps. Estos "ladrillos" (o "bloques") son lo suficientemente flexibles como para que podamos definirlos de acuerdo a nuestras necesidades puntuales.
*/

/* ➡️ Definimos propiedades y métodos para añadir funcionalidad a nuestras clases y estructuras usando la misma sintáxis que usamos para definir constantes, variables y funciones.
*/

/* **************************************************************************** */
// Comparando Estructuras y Clases
/* **************************************************************************** */

// Las Estructura y las Clases tienen varias cosas en común. Ambas pueden:

// 1- Definir PROPIEDADES para almacenar valores.
// keyword ➡️ let, var

// 2- Definir MÉTODOS para añadir funcionalidad.
// keyword ➡️ func

// 3- Definir SUBÍNDICES para proveer acceso a sus valores usando la sintáxis de subíndice.
// swift syntax ➡️ .

// 4- Definir INICIALIZADORES para configurar su estado inicial.
// swift syntax ➡️ ()

// 5- Ser extendidas para EXPANDIR SU FUNCIONALIDAD más allá de su implementación por defecto.
// keyword ➡️ extension

// 6- Conformarse a PROTOCOLOS para proveerse de funcionalidad estándar de cierto tipo.
// keyword ➡️ protocol

/////////////////////////////////////////////////////////////////////////////////////////
/// Pero las Clases tienen ciertas capacidades adicionales que las Estructuras NO tienen:
/////////////////////////////////////////////////////////////////////////////////////////

// 1- Podemos usar HERENCIA para que una Clase pueda heredar las características de otra
// ➡️ Subclass: Class

// 2- Podemos realizar CONVERSIÓN DE TIPOS, lo que nos permite comprobar e interpretar el tipo de la instancia de la clase en tiempo de ejecución.
// keyword ➡️ as, as!

// 3- Podemos usar DESINICIALIZADORES para que la instancia de una clase se libere de  cualquier recurso que tenga previamente asignado.
// keyword ➡️ deinit

// 4- Podemos hacer RECUENTO DE REFERENCIAS, lo nos permite que haya más de una referencia a una misma instancia de clase.
// keyword ➡️ ARC (Automatic Reference Counting)

// 👁 A TENER EN CUENTA:
// Las capacidades adicionales que las clases soportan agregan un costo de creciente complejidad. Como pauta general, elige las estructuras a las clases porque son más fáciles de razonar.  Sólo utiliza las clases cuando sean apropiadas o realmente necesarias.

// En la práctica, esto significa que la mayoría de los tipos de datos personalizados que definirás serán estructuras y enumeraciones.

// Para obtener una comparación más detallada, consulta "Elección entre estructuras y clases"
// https://developer.apple.com/documentation/swift/choosing_between_structures_and_classes

/* **************************************************************************** */
// Definición de la sintáxis
/* **************************************************************************** */

// Tanto las clases como las estructuras tienen una definición sintáctica similar:

struct SomeStructure {
    // la definición de la estructura va aquí
}

class SomeClass {
    // la definición de la clase va aquí
}

// ⚠️ Siempre que estés definiendo una nueva estructura o clase estás definiendo un nuevo Tipo de Swift (defining a new Swift Type). Y siempre que definimos un Tipo en Swift, su nombre por convención va con mayúsculas.


/* **************************************************************************** */
// Definiendo una estructura y una clase
/* **************************************************************************** */

// Define una estructura llamada 'Resolution' que contiene dos propiedades: 'width' y 'height', ambas puestas inicialmente con un valor de 0
struct Resolution {
    var width = 0
    var height = 0
}

// Define una clase llamada 'VideoMode' que contiene cuatro propiedades:
// 'resolution': que indica la resolución del video.
// 'interlaced': que indica si el video es 'interlaced' o no.
// 'frameRate': que indica la cantidad de 'frame rate' del video.
// 'name': que indica el nombre del video.
class VideoMode {
    // Configuración inicial, luego desde la INSTANCIACIÓN se pueden, de ser necesario, cambiar estos valores.
    var resolution = Resolution() // notar como a esta propiedad de las clase le estamos asignando la estructura "Resolution"
    var interlaced = false
    var frameRate = 0.0
    var name: String? // valor inicial por defecto de un opcional: nil
}

/* **************************************************************************** */
// Instancias de estructuras y clases
/* **************************************************************************** */

// Cuando definimos una estructura o clase lo que estamos haciendo es definir cuales serán sus propiedades y/o métodos (es decir, qué datos almacenarán y qué podrán hacer). También podemos definirles unos valores iniciales para que cuando estas clases o estructuras sean instanciadas tengan algún tipo de implementación por defecto.

// Recordar que para "empezar a usar" una estructura o clase debemos "instanciarlas", es decir, almacenar una instancia de esa clase o estructura en una constante o variable.

// La sintáxis para crear instancias tanto en clases como en estructuras es similar:

// Instanciando la estructura 'Resolution'
var someResolution = Resolution() // () significa que se está inicializando una instancia de la estructura 'Resolution' (se está creando una COPIA de la estructura)

// Instanciando la clase 'VideoMode'
let someVideMode = VideoMode() // () significa que se está inicializando una instancia de la clase 'VideoMode' (se está creando una REFERENCIA a la clase, una especie de "puntero")

// ⚠️ Notar como para instanciar ambas es necesario usar la "sintáxis de inicialización" con los paréntesis luego del nombre de la clase o estructura '()'

// Inicializar una estructura o clase específica también significa que nos estamos trayendo todos los valores puestos por defecto en su definición (que podemos modificar si lo requerimos)


/* **************************************************************************** */
// Accediendo a las propiedades
/* **************************************************************************** */

// Para acceder a todos los miembros (tanto propiedades como métodos) de una instancia usamos la "sintáxis del punto" '.'

// Ejemplo

// Recuerda que para sólo podemos "usar" una clase o estructura a través de su instancia.
// En este caso "someResolution" es una instancia de la estructura "Resolution" y es a través de ella que, mediante las notación del punto, podemos acceder a su propiedad "width"
print("El ancho de someResolution es \(someResolution.width)")

// Luego podemos actualizar el valor de la propiedad "width" asignándole ahora un valor de 20
someResolution.width = 20

// Imprime un mensaje que refleja que la instancia ha sido actualizada
print("El ancho de someResolution ahora es \(someResolution.width)")

/* **************************************************************************** */
// Inicializando los miembros de una estructura
/* **************************************************************************** */

// Todas las estructuras tienen un "inicializador de sus miembros" generado automáticamente, el cual puedes usar para inicializar los miembros de las nuevas instancias de estructuras. Los valores iniciales para las propiedades de la nueva instancia pueder ser pasados por su nombre.

// ⚠️ Los "métodos de inicialización" son funciones especiales.

// Ejemplo
// una constante de tipo 'Resolución' (una estructura) que inicializa sus propiedades con unos determinados valores

// Notar como en este caso toma directamente los valores escritos en la definición de la estructura
let someVideoResolution = Resolution()
print(someVideoResolution.width)
print(someVideoResolution.height)

// Pero en este otro, ponemos los valores de las propiedades de la estructura "Resolution" DESDE el método inicializador
let vga = Resolution(width: 640, height: 480)
print("La resolución estándar de VGA es de \(vga.width) de ancho por \(vga.height) de alto." )


/* **************************************************************************** */
// Las estructuras y las enumeraciones son "tipos por valor"
/* **************************************************************************** */

// Un "tipo por valor" es un tipo cuyo valor es COPIADO cuando es asignado a una variable o constante, o cuando es pasado a una función.

// Hasta ahora hemos usado "tipos por valor" si nos remontamos a los capítulos anteriores. De hecho, todos los tipos básicos en Swift -Enteros, Flotantes, Booleanos, Strings, Arrays y Diccionarios- son "tipos por valor", ya que han sido implmentados como estructuras detrás de escena. ⚠️⚠️⚠️

// Todas las estructuras y enumeraciones son "tipos por valor" en Swift. Esto significa que cualquier instancia de estructura o enumeración que crees -y todos los "tipos por valor" que tengan como propiedades- SERÁN SIEMPRE COPIADOS cuando sean pasados a través de nuestro código. ⚠️⚠️⚠️

let valueType = UIImage(named: "sharedStateStruct_2x.png")

// Viendo un ejemplo de "tipo por valor"
struct Casa {
    var tieneChimenea: Bool = false
}
let miCasa = Casa()
miCasa.tieneChimenea

var tuCasa = miCasa
tuCasa.tieneChimenea = true
tuCasa.tieneChimenea

/* **************************************************************************** */
// Las clases son "tipos por referencia"
/* **************************************************************************** */

// A diferencia de los "tipos por valor", los "tipos por referencia" NO SON COPIADOS cuando son asignados a una constante o variable o cuando son pasados a una función. En vez de una copia, una REFERENCIA de la misma instancia existente es usada. ⚠️

let referenceType = UIImage(named: "sharedStateClass_2x.png")

// Viendo un ejemplo de "tipo por referencia"
class House {
    var hasAFireplace: Bool = false
}
let myHouse = House()
myHouse.hasAFireplace

var yourHouse = myHouse
yourHouse.hasAFireplace = true
yourHouse.hasAFireplace

// Pero...como las dos instancias "apuntan" a las misma referencia
// y cambiamos el valor de "hasAFireplace" de la instancia "yourHouse" a 'true'
// la otra instancia ("myHouse") es afectada y cambia su valor
myHouse.hasAFireplace

/* **************************************************************************** */
// Las Clases pueden "heredar" mientras que las Estructuras no
/* **************************************************************************** */

// Un muy simple ejemplo de "herencia"

// Definimos una clase llamada "ClasePadre"
// que contiene una propiedad "apellido" que almacena el string literal "Perez"
class ClasePadre {
    var apellido: String = "Perez"
}

// Creamos una instancia a esa clase para poder "usarla"
let instanciaDeClasePadre = ClasePadre()
// Accedemos, mediante la notación del punto, a la propiedad "apellido" que actualmente contiene el valor "Perez"
instanciaDeClasePadre.apellido

// Ahora creamos otra clase llamada "ClaseHija"
// Esta clase será una 'sub clase' de "ClasePadre" (es decir, va a "heredar" de su clase padre)
// Notar como para declarar esto ponemos el nombre de la clase "padre" luego del nombre de la clase que va a heredar
// Entonces "ClaseHija" va a heredar la propiedad "apellido" de "ClasePadre"
// Pero va a agregar en su definición una propiedad exclusiva de ella, "nombre"
class ClaseHija: ClasePadre {
    var nombre: String = "Amalia"
    
}

// Creamos una instancia de la clase "ClaseHija"
let instanciaDeClaseHija = ClaseHija()
// Accedemos en principio a la propiedad que está heredando de su clase padre
// la propiedad "apellido"
instanciaDeClaseHija.apellido
// Y ahora accedemos a su propiedad exclusiva, la propiedad "nombre"
instanciaDeClaseHija.nombre

/* **************************************************************************** */
// Operadores de identidad (===, !==)
/* **************************************************************************** */

// Debido a que las Clases son "tipos por referencia", es posible que múltiples constantes o variables refieran a la misma instancia de clase detrás de escena (lo mismo no es igual para las Estructuras o las Enumeraciones, porque estos tipos siempre son copiados cuando son asignados a una constante o variable o son pasados a una función)

// En algunos casos puede que necesitemos saber si dos consntantes refieren a exactamente las MISMA instancia de una clase. Para hacer esto, Swift nos provee de dos operadores de identidad:

// Idéntico que (===)
// No Idéntico que (!==)

class MiClase {
    var propiedad = "un valor"
}

// Una instancia de las clase "MiClase"
let miInstanciaUnoAMiClase = MiClase()
// Una instancia de la instancia 'miInstanciaUnoAMiClase'
let miInstanciaDosAMiClase = miInstanciaUnoAMiClase

// Aquí comprobamos si ambas instancias refieren o "apuntan" a la misma clase
if miInstanciaUnoAMiClase === miInstanciaDosAMiClase {
    print("miInstanciaUnoAMiClase and miInstanciaDosAMiClase refieren a la misma isntancia de MiClase.")
} else {
     print("miInstanciaUnoAMiClase and miInstanciaDosAMiClase NO refieren a la misma isntancia de MiClase.")
}


