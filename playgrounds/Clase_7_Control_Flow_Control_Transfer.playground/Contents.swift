import Foundation

// Clase 7

// Control Flow

// Control Transfer

// Keywords: continue, break, fallthrough, return, throw

/*  ➡️ Con "control de transferencia" puedes cambiar el orden en el que el código se ejecuta, transfiriendo el flujo de una pieza de código a otra.
 */

/// Continue
// La declaración "continue" le dice al loop que DETENGA lo que está haciendo y que comience de nuevo desde el comienzo de la siguiente iteración. Dice "Terminé con la iteración del ciclo actual en este punto", sin dejar que el ciclo se complete,

// Ejemplo

// Una constante 'puzzleInput' que almacena una frase
let puzzleInput = "great minds think alike"

// Una variable 'puzzleOutput' preparada para recibir un output (inicialmente con un string vacío)
var puzzleOutput = ""

// Una constante 'charactersToRemove' que almacena un array de caracteres con los caracteres que vamos a remover de la frase "great minds think alike"
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]

// Un for-in loop que recorre el string 'puzzleInput'
for character in puzzleInput {
    // Evalúa si 'charactersToRemove' contiene algún caracter del string 'puzzleInput'
    if charactersToRemove.contains(character) {
        // Si contiene, si la condición es cierta, entonces reiniciar el loop desde aquí sin terminar el ciclo actual
        continue
    }
    // Si 'charactersToRemove' NO contiene el caracter evaluado, 
    puzzleOutput.append(character)
}
print(puzzleOutput)
// Prints "grtmndsthnklk"

