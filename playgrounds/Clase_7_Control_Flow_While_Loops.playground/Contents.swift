import Foundation

// Clase 7

// Control Flow

// While Loops

// Keywords: while, repeat

/*  ➡️ Un "while loop" realiza un conjunto de declaraciones hasta que una condición se convierta en false. Este tipo de Loops es utilizado cuando el número de iteraciones no se conoce antes de que la primer iteración comience. Swift provee 2 tipos de "while loops":
    
    - "while" evalúa su condición al comienzo de cada iteración a través del loop
    - "repeat while" evalúa su condición al final de cada iteración a través del loop
 */

// Estructura del "while loop"

/*
 while <condition> {
    <statements>
 }
 */

// Un "while loop" comienza evaluando una condición. Si la condición es "true", un conjunto de declaraciones se ejecuta hasta que la condición se convierta en falsa.

// Ejemplo
let number = 5

while number == 5 {
    
    // print("Es un número 5")
    // comento la declaración "print" porque si ejecutaría este bloque
    // devendría en un loop infinito ya que la condición es "true"
    
}

// Ejercicio

// Crear un "while loop"
// ✍️


// Estructura del "repeat while"

/*
 repeat {
    <statements>
 } while <condition>
 */

// Un "repeat-while loop" ejecuta AL MENOS UNA VEZ el código dentro del cuerpo y recién al final de esta primera ejecución evalua cierta condición. Si la condición es verdadera repetirá la ejecución del mismo código hasta que devenga en false.

let nombreJugador = "Valderrama"

repeat {
    print("El nombre del jugador es \(nombreJugador)")
} while nombreJugador == "Higuita"

// Imprime "El nombre del jugador es "Valderrama"

// En este ejemplo al evaluar la condición da como resultado "false", sin embargo el bloque del cuerpo del loop se ejecuta al menos una vez.

// Ejercicio

// Crear un "repeat-while loop"
// ✍️
