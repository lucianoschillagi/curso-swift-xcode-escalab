import Foundation

// Clase 8

// Enumerations

/*
 Index:
 -Enumeration definition
 -Matching Enumeration Values with Switch Statement
 -Iterating over Enumeration Cases
 -Asociated Values
 -Raw Values
 -Recursive Enumerations
 */

// Keywords: enum, case

/* ➡️ Una "Enumeración" define un tipo común para un grupo de valores relacionados y te permite trabajar con esos valores de forma segura.
 
  ➡️ Las enumeraciones en Swift son tipos de "primera clase", esto significa que pueden adoptar muchas características tradicionalmente soportadas sólo por "Clases", como propiedades computadas, métodos de instancia, definir inicializadores y conformarse a protocolos.
*/

/* ****************************************** */
// Enumeraciones (sintáxis)
/* ****************************************** */

/*
 enum SomeEnumeration {
     // enumeration definition goes here
 }
 */


// Ejemplo
// Define un enumeración
enum CompassPoint {
    case north
    case south
    case east
    case west
    
    // si quiero agregar un nuevo caso (o valor) a la enum
    // uso la palabra reservada "case"
    
//    case northEast
}

// NOTA: Los valores introducidos en la enumeración son sus "casos".

// Ejemplo de casos múltiples en una sola línea ⚠️
// ✍️

var directionToHead = CompassPoint.west
print("La dirección actual \(directionToHead)")
// "La dirección actual es west"


/* ****************************************** */
// Usando un "Switch" sobre una enumeración
/* ****************************************** */

// Ejemplo

// Define una enumeración que agrupa una serie
// de valores asociados, en este caso enumera los
// "momentos del día"
enum MomentoDelDia {
    case mañana
    case mediodia
    case tarde
    case noche
}

// Define una constante que "apunta" (y almacena) el valor de un caso en particular, en este ejemplo "noche"
let momentoActual = MomentoDelDia.mediodia

// Le pasamos un "Switch" a la enumeración
// de esta forma podemos ejecutar un código diferente
// de acuerdo al caso actual
switch momentoActual {
    case .mañana:
    print("Es de mañana")
    case .mediodia:
    print("Es de mediodía")
    case .tarde:
    print("Es de tarde")
    case .noche:
    print("Es de noche")
}

/* ****************************************************** */
// Iterando sobre los casos (valores) de una enumeración
/* ****************************************************** */

// Para algunas enumeraciones es útil tener una colección con todos los casos de la enumeración.

// Para poder hacer que los casos de una enumeración se conviertan en elementos de una colección puedes escribir "CaseIterable" después del nombre de la enumeración.

// Swift expone una colección con TODOS los casos en la propiedad "allCases" de la enumeración.

// Un ejemplo:

// 1.Declara una enumeración que agrupa una serie de bebidas
enum Bebida: CaseIterable {
    case cafe, té, jugo
}

// 2.Cuenta todos los casos que contiene la enumeración
// y almacena ese dato en la constante "numeroDePosibilidadesParaBeber"
let numeroDePosibilidadesParaBeber = Bebida.allCases.count

// ➡️ mediante la propiedad "allCases" accedemos a una colección que contiene todos los casos de la enumeración

// 3.Imprime la cantidad e bebidas disponibles que hay
print("\(numeroDePosibilidadesParaBeber) bebidas disponibles")

// 4.Ahora iteramos sobre todos los elementos de la colección, para eso usamos de nuevo la propiedad de la enumeración
    "allCases"

// For in Loops sobre una Enum (que está tratada como una colección)
for bebida in Bebida.allCases {
    print(bebida)
}

// 🤓 CaseIterable (Protocol)
// 🤓 allCases (Property)


/* ************************** */
// Valores brutos (Raw Values)
/* ************************** */

// Las enumeraciones pueden ser pre-populadas con valores
// por defecto (llamados "raw values") los cuales tienen
// que ser todos del MISMO TIPO.

enum TamañoHoja: String {
    case A4 // por defecto el nombre pasa a ser la asignación del string, el "raw value"
    case A3
    case A5
    case A6
}

// Ahora "tamañoHojaPreferida" es de tipo String
let tamañoHojaPreferida = TamañoHoja.A3.rawValue
print(tamañoHojaPreferida)

// ⤴️ Aplicarle un método incorporado de String como "lowercased"

print("Mi tamaño de hoja preferida es \(tamañoHojaPreferida) ")

// Ejemplo asignándole de entrada un valor de tipo 'Int'
// a cada caso y conformando la enumeración al protocolo
// "CaseIterable" para que luego se pueda iterar
enum NumeroPar: Int, CaseIterable {
    case dos = 2 // 2 es el raw value del caso "dos"
    case cuatro = 4 // etc
    case seis = 6
    case ocho = 8
}

let dos = NumeroPar.dos.rawValue
let cuatro = NumeroPar.cuatro.rawValue
let suma = dos + cuatro

// Itera sobre todos los casos de la enumeración
// imprimiendo los valores brutos de cada caso
for item in NumeroPar.allCases {
    print(item.rawValue)
}


/* ************************** */
// 🕵️‍♂️
// Investigar los tópicos:
// - Valores asociados
// - Enumeraciones recursivas
/* ************************** */


