import Foundation

// Clase 7

// Control Flow

// Conditional Statements

// Keywords: if, else, if else, switch, case, where

/*  ➡️ Es frecuente que necesitemos ejecutar diferentes piezas de código de acuerdo a que una condición se cumpla o no. Para realizar esto, necesitamos declarar ciertas partes de nuestro código como "condicionales".
 
    Swift nos provee dos formas de ejecutar código condicional: mediante "if" o "switch".
 
    Típicamente usamos "if" si necesitamos evaluar condiciones simples con pocas alternativas de salida (outputs).
 
    Para condiciones más complejas donde haya muchas alternativas de salidas posibles, es más adecuado usar el condicional "switch".
 */

/// if
// En su forma más simple, la declaración "if" tiene una única condición. Se ejecutará entonces el código del cuerpo del condicional sólo si la condición es verdadera.

// Ejemplo:
var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}
// Prints "It's very cold. Consider wearing a scarf."

// Ejercicio:
// Declarar un condicional que evalúe si una condición es verdadera, y si es así, que ejecute algún mensaje acorde en consola.
// ✍️



/// if-else
// Si queremos que en caso de que la condición sea falsa se ejecute otra rama, usaremos "else"

// Ejemplo:
let temperatureInFahrenheitTwo = 40
if temperatureInFahrenheitTwo <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// Prints "It's not that cold. Wear a t-shirt."

/// else-if
// Si queremos evaluar dos condiciones distintas (y que se ejecute un rama u otra si es alguna de ellas es true) podemos usar "if-else"

// Ejemplo:
let temperatureInFahrenheitThree = 72
if temperatureInFahrenheitThree <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheitThree >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("🤔")
}


/// Switch
// Con "switch" tomamos un valor y lo comparamos con varios valores del mismo tipo. Si el valor comparado coincide con alguno de los valores a comparar, se ejecutará la rama que se corresponda con esa coincidencia. Este mecanismo nos permite responder a múltiples potenciales estados de un valor ejecutando la rama que coincida con el valor evaluado.

// En su forma simple, la declaración "switch" sigue esta forma:
/*
     switch <some value to consider> {
     case value 1:
         <respond to value 1>
     case value 2,
          value 3:
         <respond to value 2 or 3>
     default:
         >otherwise, do something else>
     }
 */

// Ejemplo:

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
// Prints "The last letter of the alphabet"

// Ejercicio:
// Declarar un "switch" (con 3 casos) que evalué si el color almacenado en la constante "color" es "amarillo". En caso de que así sea, imprimir un mensaje acorde
let color: String = "amarillo"
//✍️

// Otro usos más complejos de "switch"

// Ejemplos:

/// Casos compuestos
let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A": // ⬅️ un caso compuesto
    print("The letter A")
default:
    print("Not the letter A")
}
// Prints "The letter A"

/// Coincidencia en intervalos (Interval Matching)
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5: // este caso evalua si "approximateCount" tiene un valor entre 1 y 4
    naturalCount = "a few" // código a ejecutar en caso de que sea cierto el caso
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// Prints "There are dozens of moons orbiting Saturn."

/// Con Tuplas
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}
// Prints "(1, 1) is inside the box"


/// Value Bindings
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0): // "let x" almacena TEMPORALMENTE el primer valor de la tupla
    print("on the x-axis with an x value of \(x)") // en esta declaración usamos el valor de "x" almacenado anteriormente 😀
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}
// Prints "on the x-axis with an x value of 2"


/// Where
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y: // con "let" almacenamos temporalmente, y le damos un nombre, a los valores de la tupla. Con "where" decimos que "x" tiene que ser igual a "y" para que se ejecute este caso.
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
// Prints "(1, -1) is on the line x == -y"

/// Casos compuestos 2
let someCharacterTwo: Character = "e"
switch someCharacterTwo {
case "a", "e", "i", "o", "u":
    print("\(someCharacterTwo) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacterTwo) is a consonant")
default:
    print("\(someCharacterTwo) is not a vowel or a consonant")
}
// Prints "e is a vowel"

// Ejercicio:
// Crear un "switch" que evalúe un string y que ejecute en cada una de sus ramas un mensaje informando acerca de las cantidad de letras que contiene la palabra evaluada.
// ✍️

