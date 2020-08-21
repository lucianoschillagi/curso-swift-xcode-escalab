import Foundation

/*
CLASE 6
Tópico:
-Funciones (Functions)
*/

/// Funciones
/// Una función es un bloque de código autónomo que realiza una tarea específica. Cada función tiene un nombre que describe qué hace. Su nombre es utilizado para "llamar" a la función cuando queremos que se ejecute.

/* Las "dos caras" de toda función */
// 1.La definición de la función
func saludo(){
    print("hola")
}
// 2.Su uso (cuando la "llamamos")
saludo()


/* Como se escribe-declara una Función en Swift */
// Tenemos la posibilidad crear distintos tipo de funciones:

// Así escribimos una función sin parámetros ni valor de retorno (sin input ni output)
func miFuncion(){
    // Aquí dentro escribimos las sentencias que queremos que se ejecuten
    // una vez es llamada la función (es decir, aquí va el algoritmo)
}

// Así una función con uno o más parámetros pero sin valor de retorno (con input pero sin output)
func sumar(n1: Int, n2: Int) {
    print(n1 + n2)
}
sumar(n1: 3, n2: 2)

// Así una función sin parámetros pero con valor de retorno (sin input pero con output)
func sacarUnString() -> String {
    return "Este output es de tipo string!"
}
sacarUnString()

// Así una función con parámetros y con valor de retorno (sin input pero con output)
func contarCaracteres(str: String) -> Int {
    let nombre = "Chris "
    return (nombre + str).count
}
contarCaracteres(str: "Lattner")

// Como se escribe el "tipo" de una función?
// Algunos ejemplos
func funcUno(){} // () -> Void
func funcDos(n:Int){} // (Int) -> Void
func funcTres(s: String) -> Bool{return true} // (String) -> Bool
func funcCuatro() -> Double {return 1.1} // () -> Double

// EJERCICIO 01:
// Definir una función sin parámetros ni valor de retorno. Implementarla y llamarla.
// ✍️
// Definir una función con tres parámetros, sin valor de retorno. Implementarla y llamarla.
// ✍️
// Definir una función con X parámetros y con un valor de retorno. Implementarla y llamarla.
// ✍️
// Definir una función sin parámetros y con un valor de retorno. Implementarla y llamarla.
// ✍️
// Definir una función con dos parámetros y dos valores de retorno. Implementarla y llamarla.
// ✍️

/* ********************************************************************** */
// Desafío 🕵️‍♂️
// Investigar cómo se puede almacenar una función dentro una variable
// Dar un ejemplo
// ✍️
/* ********************************************************************** */


// EJERCICIO 02:
// Definir una función que omita las etiquetas de argumentos (argument labels). Implementarla y llamarla.
// ✍️
// Definir una función que tenga nombres de parámetros y etiquetas de argumentos con nombres distintos. Implementarla y llamarla.
// ✍️
// Definir una función que tenga parámetros con valores por defecto. Implementarla y llamarla.
// ✍️


// EJERCICIO 03:
// Repasando "Tipos función como valores de retorno" con un ejemplo
// "Function Types as Return Types"

// Comentar línea por línea que sucede en este código ↙️

func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the stepBackward() function

print("Counting to zero:")
// Counting to zero:
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")

/* ********************************************************************** */
// Desafío 🕵️‍♂️
// Investigar cómo se pueden anidar funciones dentro de funciones
// Dar un ejemplo
// ✍️
/* ********************************************************************** */

