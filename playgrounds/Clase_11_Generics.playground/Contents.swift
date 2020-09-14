import Foundation

// Clase 11

// Genéricos (Generics)

// Keywords:

/*
 Index:
- The Problem That Generics Solve
- Generic Functions
- Type Parameters
- Naming Type Parameters
- Generics Types
- Extending a Generic Type
- Type Constraints
- Associated Types
- Generic Where Clause
- Extensions with a Generic Where Clause
 */

/* ➡️ Escribir código "genérico" te permite escribir código flexible, funciones reutilizables y tipos que funcionan con cualquier tipo. Puedes escribir código que evita la duplicación y expresa su intención de forma clara, en un modo abstracto.
*/

/* ➡️ Los "Genéricos" son una de las característica más poderosas de Swift y mucho de lo que está escrito en la Librería Estándar de Swift es código "genérico". Por ejemplo, los arrays y diccionarios de Swift son ambas colecciones "genéricas". Puedes crear un array que almacene valores enteros o un array que almacena strings, o que almacena cualquier tipo que esté creado en Swift. De manera similar, puede crear un diccionario para almacenar valores de cualquier tipo especificado y no existen limitaciones sobre lo que puede ser ese tipo.
*/

/* **************************************************************************** */
// El problema que los genéricos resuelven
/* **************************************************************************** */

//Here’s a standard, nongeneric function called swapTwoInts(_:_:), which swaps two Int values:

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

//This function makes use of in-out parameters to swap the values of a and b, as described in In-Out Parameters.
//
//The swapTwoInts(_:_:) function swaps the original value of b into a, and the original value of a into b. You can call this function to swap the values in two Int variables:

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// Prints "someInt is now 107, and anotherInt is now 3"
//The swapTwoInts(_:_:) function is useful, but it can only be used with Int values. If you want to swap two String values, or two Double values, you have to write more functions, such as the swapTwoStrings(_:_:) and swapTwoDoubles(_:_:) functions shown below:

func swapTwoStrings(_ a: inout String, _ b: inout String) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someString = "hola"
var anotherString = "chau"
swapTwoStrings(&someString, &anotherString)
print("someString is now \(someString), and anotherString is now \(anotherString)")

//func swapTwoDoubles(_ a: inout Double, _ b: inout Double) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//You may have noticed that the bodies of the swapTwoInts(_:_:), swapTwoStrings(_:_:), and swapTwoDoubles(_:_:) functions are identical. The only difference is the type of the values that they accept (Int, String, and Double).
//
//It’s more useful, and considerably more flexible, to write a single function that swaps two values of any type. Generic code enables you to write such a function. (A generic version of these functions is defined below.)


/* **************************************************************************** */
// Funciones genéricas
/* **************************************************************************** */

func swapTwoDoubles(_ a: inout Double, _ b: inout Double) {
    let temporaryA = a
    a = b
    b = temporaryA
}


// Esta es una función genérica (no estándar)
// donde refactorizamos a través de un genérico para que sea reutilizable
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var algunTipo = 3
var otroTipo = 107
swapTwoValues(&algunTipo, &otroTipo)

/* **************************************************************************** */
// Parámetros Tipo (Type Parameters)
/* **************************************************************************** */



/* **************************************************************************** */
// Nombrando Parámetros Tipo
/* **************************************************************************** */




/* **************************************************************************** */
// Tipos Genéricos (Generic Types)
/* **************************************************************************** */

struct IntStack {
    var items = [Int]() // Un array de Ints
    
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

// Here’s a generic version of the same code:
struct Stack<Items> {
    var items = [Items]()
    mutating func push(_ item: Items) {
        items.append(item)
    }
    mutating func pop() -> Items {
        return items.removeLast()
    }
}


var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
stackOfStrings.push("cuatro")

let fromTheTop = stackOfStrings.pop()

var stackOfInts = Stack<Int>()
stackOfInts.push(2)
stackOfInts.push(4)
stackOfInts.push(5)
stackOfInts.push(7)

let miArray: Array<String> = ["uno", "dos"]

