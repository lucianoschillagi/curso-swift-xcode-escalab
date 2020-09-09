import Foundation

// Clase 10

// Tipos en Swift (Types)

// Keywords: typealias

/*
 Index:
 - Type Annotation
 - Type Identifier
 - Tuple Type
 - Function Type
 - Array Type
 - Dictionary Type
 - Optional Type
 - Implicitly Unwrapped Optional Type
 - Opaque Type
 - Metatype Type
 - Self Type
 - Type Inheritance
 - Type Inference
 */

/* ➡️ En Swift, hay dos clases de tipos: loa "tipos nombrados" y los "tipos compuestos". Un "tipo nombrado" es un tipo al que se le da un nombre particular cuando se lo define. "Tipos nombrados" (Named Types) incluyen a las clases, las enumeraciones, las estructuras y los protocolos. Por ejemplo, las instancias de una clase definida por el usuario (el programador) nombrada "MyClass", tendrá el tipo nombrado "MyClass". Aparte de los "tipos nombrados" que puede definir el programador, la 'Librería Estándar de Swift' define muchos de los tipos nombrados que generalmente usamos, incluyendo aquellos tipos que representan arrays, diccionarios y opcionales.
*/

/* ➡️ Los "Data Types" son normalmente considerados básicos o primitivos en otros lenguajes -como los tipos que representan números, caracters y strings- en Swift estos tipos están dentros de los "tipos nombrados" y definidos previamente en la 'Librería Estándar de Swift' usando estructuras. Debido a que las estructuras son "tipos nombrados", puedes extender su comportamiento para atender a las necesidades de tu programa (ver "Extensiones")
*/

/* ➡️ Un "tipo compuesto" (Compound Type) es un un tipo que no tiene nombre, definido por el lenguaje en sí mismo. Hay dos "tipos compuestos" (de los seis totales): las funciones y las tuplas. Por ejemplo, el "tipo tupla" (Int, (Int, Int)) contiene dos elementos. El primero es el tipo nombrado "Int" y el segundo el tipo compuesto (Int, Int).
*/

/* **************************************************************************** */
// Type Identifier
/* **************************************************************************** */

// Con las palabra reservada "typealias" podemos darle un "alias" descriptivo a un Tipo Compuesto o a un Tipo Nombrado.
typealias Origen = (Double, Double)
let miOrigen: Origen = (3.4343, 4.4343)
// Type Identifier de "miOrigen" ➡️ Origen

let saludo: String = "Hello"
// Type Identifier de "saludo" ➡️ String

func imprimirNombre(nombre:String){}
// Type Identifier de "imprimirNombre" ➡️ (String) -> Void

func sumar(n1: Float, n2: Float) -> Int { return 0 }
// Type Identifier de "sumar" ➡️ (Float, Float) -> Int

/* **************************************************************************** */
// Type Inference (Inferencia de Tipos)
/* **************************************************************************** */

let miTipoSinInferencia: Int = 1
let miTipoConInferencia = 1 // Int

/* **************************************************************************** */
// 6 Tipos en Swift
/* **************************************************************************** */

// 2 clases de tipos en Swift: Tipos Nombrados y Tipos Compuestos.
// Tipos nombrados incluyen: clases, estructuras, enumeraciones y protocolos.
// Tipos compuestos incluyen: tuplas y funciones.


