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

/* ➡️ NOTA SOBRE PORQUE EN SWIFT SE USA EL TÉRMINO "INSTANCIA" EN VEZ DE "OBJETO"
*/


/* **************************************************************************** */
// Comparando Estructuras y Clases
/* **************************************************************************** */

// Las Estructura y las Clases tienen varias cosas en común. Ambas pueden:

// 1- Definir PROPIEDADES para almacenar valores.
// ➡️ let, var

// 2- Definir MÉTODOS para añadir funcionalidad.
// ➡️ func

// 3- Definir SUBÍNDICES para proveer acceso a sus valores usando la sintáxis de subíndice.
// ➡️ .

// 4- Definir INICIALIZADORES para configurar su estado inicial.
// ➡️ ()

// 5- Ser extendidas para EXPANDIR SU FUNCIONALIDAD más allá de su implementación por defecto.
// ➡️ extension

// 6- Conformarse a PROTOCOLOS para proveerse de funcionalidad estándar de cierto tipo.
// ➡️ protocol

/////////////////////////////////////////////////////////////////////////////////////////
/// Pero las Clases tienen ciertas capacidades adicionales que las Estructuras NO tienen:
/////////////////////////////////////////////////////////////////////////////////////////

// 1- Podemos usar HERENCIA para que una Clase pueda heredar las características de otra
// ➡️ Subclass: Class

// 2- Podemos realizar CONVERSIÓN DE TIPOS, lo que nos permite comprobar e interpretar el tipo de la instancia de la clase en tiempo de ejecución.
// ➡️ as, as!

// 3- Podemos usar DESINICIALIZADORES para que la instancia de una clase se libere de  cualquier recurso que tenga previamente asignado.
// ➡️ deinit

// 4- Podemos hacer RECUENTO DE REFERENCIAS, lo nos permite que haya más de una referencia a una misma instancia de clase.
// ➡️ ARC (Automatic Reference Counting)

// ⚠️ Las capacidades adicionales que las clases soportan agregan un costo de creciente complejidad. Como pauta general, prefiere las estructuras a las clases porque son más fáciles de razonar.  Sólo utilice las clases cuando sean apropiadas o realmente necesarias. En la práctica, esto significa que la mayoría de los tipos de datos personalizados que definirás serán estructuras y enumeraciones.

// Para obtener una comparación más detallada, consulte Elección entre estructuras y clases.


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

// Define una estructura llamada 'Resolution' que contiene dos propiedades: 'width' y 'height'
struct Resolution {
    var width = 0
    var height = 0
}

// Define una clase llamada 'VideoMode' que contiene cuatro propiedades:
// 'resolution': que representa la resolución del video
// 'interlaced': que representa si el video es 'interlaced' o no
// 'frameRate': que representa la cantidad de 'frame rate' del video
// 'interlaced': que representa el nombre del video
class VideoMode {
    // Configuración inicial, luego desde la instanciación se podrían cambiar los valores
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String? // valor inicial por defecto de un opcional: nil
}

/* **************************************************************************** */
// Instancias de estructuras y clases
/* **************************************************************************** */

// Cuando definimos una estructura o clase lo que estamos haciendo es definir cuales serán sus propiedad y/o métodos (es decir, qué tendrán y qué podrán hacer). También definimos unos valores iniciales para que cuando estas clases o estructuras sean "llamadas" tengan algún tipo de implementación por defecto.

// Pero para empezar a usar estas estructuras o clases debemos "instanciarlas". De esta manera podremos empezar a usar todas las características que contienen y modificar, de ser necesario, los valores puestos inicialmente cuando las definimos.

// (Ejemplo "Persona" -> "Juan")

// La sintáxis para crear instancias tanto de clases como de estructuras es similar:

// Instanciando la estructura 'Resolution'
var someResolution = Resolution() // () significa que se está inicializando una instancia de la estructura 'Resolution' (se está creando una COPIA de la estructura)

// Instanciando la clase 'VideoMode'
let someVideMode = VideoMode() // () significa que se está inicializando una instancia de la clase 'VideoMode' (se está creando una REFERENCIA a la clase, una especie de "puntero")

// ⚠️ Notar como para instanciar ambas es necesario usar la "sintáxis de inicialización" con los paréntesis '()'

// Inicializar una estructura o clase específica también significa que nos estamos trayendo todos los valores puestos por defecto en su definición (que podemos modificar si\\\\ queremos)


/* **************************************************************************** */
// Accediendo a las propiedades
/* **************************************************************************** */

// Para acceder a las propiedades de una instancia usamos la "sintáxis del punto" (dot syntax).

// Ejemplo

// Accede mediante la notación del punto (.) a las propiedades de la instancia
// específicamente a la propiedad "width" (recordar que en la definición tenía puesto inicialmente un valor de 0)
print("El ancho de someResolution es \(someResolution.width)")

// Actualiza el valor de la propiedad "width" asignándole ahora un valor de 20
someResolution.width = 20

// Imprime un mensaje que refleja que la instancia ha sido actualizada exitosamente
print("El ancho de someResolution ahora es \(someResolution.width)")

var someResolutionDos = Resolution()
someResolutionDos.width = 40
print("El ancho de someResolutionDos es \(someResolutionDos.width)")

/* **************************************************************************** */
// Inicializando los miembros de una estructura
/* **************************************************************************** */

// Todas las estructuras tienen un "inicializador de sus miembros" generado automáticamente, el cual puedes usar para inicializar los miembros de las nuevas instancias de estructuras. Los valores iniciales para las propiedades de la nueva instancia pueder ser pasados por su nombre.

// ⚠️ Los "métodos de inicialización" son funciones especiales.

// Ejemplo
// una constante de tipo 'Resolución' (una estructura) que inicializa sus propiedades con unos determinados valores

// Notar como en este caso toma los valores escritos en la definición
let someVideoResolution = Resolution()
print(someVideoResolution.width)
print(someVideoResolution.height)

let vga = Resolution(width: 640, height: 480)
print("La resolución estándar de VGA es de \(vga.width) de ancho por \(vga.height) de alto." )


/* **************************************************************************** */
// Las estructuras y las enumeraciones son "tipos-valor"
/* **************************************************************************** */

// Un "tipo-valor" es un tipo cuyo valor es COPIADO cuando es asignado a una variable o constante, o cuando es pasado a una función.

// Hasta ahora hemos usado "tipos-valor" si nos remontamos a los capítulos anteriores. De hecho, todos los tipos básicos en Swift -Enteros, Flotantes, Booleanos, Strings, Arrays y Diccionarios- son "tipos-valor", ya que han sido implmentados como estructuras detrás de escena. ⚠️⚠️⚠️

// Todas las estructuras y enumeraciones son "valores-tipo" en Swift. Esto significa que cualquier instancia de estructura o enumeración que crees -y todos los "valores-tipo" que tengan como propiedades- SERÁN SIEMPRE COPIADOS cuando sean pasados a través de nuestro código. ⚠️⚠️⚠️

let valueType = UIImage(named: "sharedStateStruct_2x.png")

// Viendo un ejemplo de esto con estructuras
// ✍️

// Viendo un ejemplo de esto con enumeraciones
// ✍️


/* **************************************************************************** */
// Las clases son "tipos-referencia"
/* **************************************************************************** */

// A diferencia de los "tipos-valor", los "tipos-referencia" NO SON COPIADOS cuando son asignados a una constante o variable o cuando son pasados a una función. En vez de una copia, una referencia de la misma instancia existente es usada. ⚠️

let referenceType = UIImage(named: "sharedStateClass_2x.png")

// Viendo un ejemplo de esto con clases
// ✍️


/* **************************************************************************** */
// Operadores de identidad (===, !==)
/* **************************************************************************** */

// TODO: COMPLETAR


