import Foundation

// Clase 8

// Optionals

/*
 Index:
 - Optional definition
 - nil
 - if statement and forced unwrapping
 - optional binding
 - Implicitly unwrapped optionals
 */

// Syntax: ?, !, if let

/* ➡️ Usamos "opcionales" en situaciones donde un valor puede estar ausente. Un opcional representa dos posibilidades: que exista un valor "dentro" del opcional y que lo puedas desenvolver para acceder a él, o que no exista ningún valor dentro del opcional y te encuentres con un "nil".
*/

/* ********************************** */
// Viendo un tipo opcional en acción
/* ********************************** */

// una constante llamada "numeroPosible" que aloja un string literal con el valor "123"
var numeroPosible: String = "123"

// En Swift, el tipo 'Int' tiene un inicializador que trata de convertir un valor de tipo 'String' en un valor de tipo 'Int'

// En este ejemplo, el string "123" podría ser convertido a 'Int', pero en otros casos, por ejemplo, si queremos convertir "Hola Mundo" a un valor 'Int', obviamente fallaría ya que no tiene un equivalente numérico.

// Entonces, debido a que el inicializador puede fallar, este devuelve un 'Int' opcional, no un 'Int' a secas.

// El signo de interrogación (?) nos indica que el valor es opcional, lo cual significa que este valor puede contener un valor 'Int' como puede no contener nada (nil)

// Inicializa un Int y le pasa como argumento una referencia a la constante "numeroPosible". Aloja esta inicialización en una constante llamada "numeroConvertido"
let numeroConvertido = Int(numeroPosible)
print(numeroConvertido!)
// numeroConvertido es inferido como de tipo "Int?" o "Int opcional"

// 🤔 ¿Qué pasaría si a "numeroPosible" le asignamos un valor como "ABC"?
// ✍️
numeroPosible = "ABC"

numeroConvertido

/* *****/
// nil
/* *****/

// Puedes poner una variable opcional a "nil", lo que significará que esa variable opcional no contiene ningún valor. "nil" es considerado por Swift como un "valor especial"

// No puedes usar "nil" en una variable que no sea opcional. "nil" es un valor especial que SÓLO PUEDE SER USADO EN UN OPCIONAL

// Ejemplo ↙️

// Una variable "serverResponseCode" de tipo 'Int' opcional
var serverResponseCode: Int? = 404
// que actualmente contiene un entero, '404'

// Ahora actualizamos el valor de "serverResponseCode" asignándole un "nil", es decir, "vaciamos la variable, yo no contiene nada dentro"
serverResponseCode = nil
// serverResponseCode no contiene ahora ningún valor

/* ******************************************** */
// Declaraciones if y desenvolvimiento forzado
/* ******************************************** */

// Mecanismos con los que contamos para saber si un opcional contiene un valor o no

// Podemos usar una declaración "if" para saber si un opcional contiene un valor o no a través del operador de igualdad (==) o el de desigualdad (!=).

// Ejemplo ↙️

// Una variable "cantidadDeFosforosEnLaCaja" de tipo 'Int' opcional que no contiene nada
let cantidadDeFosforosEnLaCaja: Int? = nil

// Mediante el "if" inspecciona si el opcional contiene un valor actualmente o no
if cantidadDeFosforosEnLaCaja != nil {
    print("cantidadDeFosforosEnLaCaja contiene algún valor de tipo Int")
}

// Desenvolvimento forzado (Forced Unwrapping)
if cantidadDeFosforosEnLaCaja != nil {
    print("cantidadDeFosforosEnLaCaja contiene el siguiente valor de tipo Int: \(cantidadDeFosforosEnLaCaja!)")
}

// Mediante el signo de exclamación (!) "desenvolvemos forzadamente el opcional" y accedemos a lo que contiene en ese momento: un valor o un nil. Hay que estar muy seguros de que el opcional efectivamente está conteniendo un valor, por eso usamos un condicional if para asegurarnos de esto. Tener en cuenta que si desenvolvemos un opcional y dentro no tiene nada (contiene un "nil") se producirá un error en tiempo de ejecución 🧨

// Ejemplo
// Una constante de tipo 'Int opcional' que no está almacenando ningún valor
let miOpcionalSinNada: Int? = nil
// Si intento desenvolver forzadamente (con !) este opcional, se producirá un error en tiempo de ejecución. Algo que hay que evitar a toda costa.
//miOpcionalSinNada! // 🧨 CRASH!!!

/* ******************************************** */
// Optional Binding
/* ******************************************** */

// Usamos "Optional binding" para saber si un opcional contiene un valor o no, y si lo contiene, hacer que ese valor este disponible temporalmente en una constante o variable que podrá ser usada en la primer rama del if (es decir, en la rama que se ejecuta si la condición es cierta)

// Ejemplo

// Una constante de tipo 'String opcional' que almacena el string literal "hola"
let possibleNumber2: String? = "456"

// Ahora con "optional binding" inspecciono el opcional "possibleNumber2" para saber si contiene dentro un valor o no. Y en caso de que contenga un valor se lo paso a la constante temporal "actualNumber"
if let actualNumber = Int(possibleNumber2!) {
    print("The string \"\(String(describing: possibleNumber2!))\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(String(describing: possibleNumber2!))\" could not be converted to an integer")
}
// Prints "The string "456" has an integer value of 456"

/* ******************************* */
// 🕵️‍♂️
// Investigar el tópico:
// - Implicitly unwrapped optionals
/* ********************************* */



