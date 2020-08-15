import Foundation

/*
 CLASE 4
 Topicos:
 
 1.Operadores de comparación
 
 2.Strings & Characters (2da parte)
    -Contando caracteres
    -Accediendo y modificando un string
    -Substrings
    -Comparando strings
    -Representaciones Unicode de strings
 */

/// Operadores de comparación

/*
 Equal to (a == b)
 Not equal to (a != b)
 Greater than (a > b)
 Less than (a < b)
 Greater than or equal to (a >= b)
 Less than or equal to (a <= b)
 */

// Ejemplos
 1 == 2  // true because 1 is equal to 1
 2 != 1   // true because 2 is not equal to 1
 2 > 1    // true because 2 is greater than 1
 1 < 2    // true because 1 is less than 2
 1 >= 1   // true because 1 is greater than or equal to 1
 2 <= 1   // false because 2 is not less than or equal to 1

// Ejercicios:
// 1: Comparar dos Ints y evaluar si contienen el mismo valor
// ✍️
// 2: Comparar dos Strings y evaluar si contienen el mismo valor
// ✍️
// 3: Comparar dos Doubles y evaluar si contienen valores distintos
// ✍️
// 4: Comparar dos Floats y evaluar si uno es mayor que el otro
// ✍️
// 5: Comparar dos Ints y evaluar si uno es menor o igual que el otro
// ✍️

/// Strings & Characters (2da parte)

// Contando caracteres
let saludo: String = "Hola Mundo"
print(saludo.count)

// 6: Declarar tres constantes que almacenen strings literales. Luego contar sus caracteres e imprimirlos en consola.
// ✍️

// 7: Obtener el primer caracter de las tres constantes anteriores. Imprimirlos.
// ✍️


/// Accediendo a un string
// Ejemplo de como acceder a los miembros de una colección
// (en este caso de un String, que recordemos, es una colección de caracteres)

let insecto: String = "escarabajo"
insecto[insecto.startIndex]
// e
insecto[insecto.index(after: insecto.startIndex)]
// s
let obteniendoElTercerCaracter = insecto.index(insecto.startIndex, offsetBy: 2)
insecto[obteniendoElTercerCaracter]
// c
let obteniendoElCuartoCaracter = insecto.index(insecto.startIndex, offsetBy: 3)
insecto[obteniendoElCuartoCaracter]
// a
let obteniendoElQuintoCaracter = insecto.index(insecto.startIndex, offsetBy: 4)
insecto[obteniendoElQuintoCaracter]
// r
let obteniendoElSextoCaracter = insecto.index(insecto.startIndex, offsetBy: 5)
insecto[obteniendoElSextoCaracter]
// a
let obteniendoElSeptimoCaracter = insecto.index(insecto.startIndex, offsetBy: 6)
insecto[obteniendoElSeptimoCaracter]
// b
let obteniendoElOctavoCaracter = insecto.index(insecto.startIndex, offsetBy: 7)
insecto[obteniendoElOctavoCaracter]
// a
let obteniendoElNovenoCaracter = insecto.index(insecto.startIndex, offsetBy: 8)
insecto[obteniendoElNovenoCaracter]
// j
insecto[insecto.index(before: insecto.endIndex)]
// o

// 8: Almacenar en una constante un string de 6 caracteres
// ✍️
// 9: Acceder al primer caracter del string
// ✍️
// 10: Acceder al segundo caracter del string
// ✍️
// 11: Acceder al tercer caracter del string
// ✍️
// 12: Acceder al cuarto caracter del string
// ✍️
// 13: Acceder al quinto caracter del string
// ✍️
// 14: Acceder al último caracter del string
// ✍️

/// Insertando un caracter dentro de un string
// Para insertar un caracter dentro de un string contamos con el método
// insert(_:at:)
// en el 1er argumento de este método especificamos qué caracter queremos insertar
// en el 2do, en qué posición del string a modificar

// Ejemplo:
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)

// 15: Insertar un caracter (emoji) al inicio del siguiente string
var miEmoji = " <- este es uno de mis emojis preferidos"
// ✍️

/// Insertando un string dentro de otro string
// Para insertar el contenido de un string dentro de otro string contamos con el método
// insert(contentsOf:at:)

// Ejemplo:
var bienvenido = "Hola"
bienvenido.insert(contentsOf: " Bienvenido!",
                  at: bienvenido.endIndex)

// 16: Insertar un string que complete la frase "Swift es un lenguaje multiparadigma"
var acercaDeSwift = "Swift es un multimparadigma"
acercaDeSwift.insert(contentsOf: "lenguaje ", at: acercaDeSwift.index(acercaDeSwift.startIndex, offsetBy: 12))
// ✍️

/// Removiendo un caracter dentro de un string
// Para remover un caracter dentro de un string contamos con el método
// remove(_:at:)

// Ejemplo:
var forma = "paralelepipedo"
forma.remove(at: forma.index(before: forma.endIndex))
forma
// 17: Remover el primer caracter de la variable 'forma'
// ✍️

/// Removiendo un substring dentro de un string
// Para remover un caracter dentro de un string contamos con el método
// removeSubrange(_:)

// Ejemplo:
var finalDelJuego = "Game Over"
let range = forma.index(finalDelJuego.endIndex, offsetBy: -5)..<finalDelJuego.endIndex
finalDelJuego.removeSubrange(range)
finalDelJuego

// 18: Remover el apellido de la variable 'actorItaliano'
var actorItaliano = "Ugo Tognazzi"
// ✍️



