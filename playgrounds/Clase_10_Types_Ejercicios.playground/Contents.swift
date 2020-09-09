import Foundation

/*  Práctica sobre "Types" 🏋️‍♀️  */

// Ejercicios

/* ****************************************************** */
// 01. Identificar el Tipo (o "Type Indentifier")
/* ****************************************************** */

// ¿Cuál es el "Identificador" de estos Tipos?
func f1() -> Int { return 0 }
// ✍️

//() -> Int

let tienesMascota = false
// ✍️
//Bool

let suNombre = "Esteban A."
// ✍️
// String

typealias Coordenada = (Double, Double)
let misCoordenadas: Coordenada = (x: 45.2434, y: 34.53454)
// ✍️
// (Double, Double) de alias "Coordenada"

let numeros: [Int] = [2, 34, 4, -4, 0, 32]
// ✍️

//Array<Int> Array de Enteros (genérico?)

func f2(p1:String, p2:Int, p3: Bool) {}
// ✍️

//(String, Int, Bool) -> Void

let miDicc = ["color": "verde", "numero": "4", "letra": "T"]
// ✍️

//Array<String>

/////////////////////////////////////////////////////////////////
// Para los siguientes ejercicios consultar a la documentación
// https://docs.swift.org/swift-book/ReferenceManual/Types.html#

/* **************************************************************************** */
// 02. Function Type
/* **************************************************************************** */

// Dar 3 ejemplos de 3 Tipos de funciones diferentes
// ✍️
// () -> ()  //funcion que no toma argumentos
// ✍️
// (Int, Int) -> Void funcion que toma dos enteros pero no retorna ningun valor
// ✍️
// (String, Bool) -> Bool  //Funcion que toma un valor String y un valor Booleano y devuelve un booleano

/* **************************************************************************** */
// 03. Array Type
/* **************************************************************************** */

// Dar 3 ejemplos de 3 Tipos de array diferentes
// ✍️
// Array<T> Un array de cualquier tipo
// ✍️
// Array<Int> Un array de enteros
// ✍️
// Array<Bool> Un array de booleanos

/* **************************************************************************** */
// 04. Dictionary Type
/* **************************************************************************** */

// Dar 3 ejemplos de 3 Tipos de diccionarios diferentes
// ✍️
// Dictionary<String, Int> Un diccionario de llaves de tipo String y valores de tipo Enteros
// ✍️
// Dictionary<Int, String> Un diccionario de llaves de tipo Entero y valores de tipo String
// ✍️
// Dicionary<Bool, Double> Un diccionario de llaves de tipo Booleano y valores de tipo Double

/* **************************************************************************** */
// 05. Optional Type
/* **************************************************************************** */

// Dar 3 ejemplos de 3 Tipos de opcionales diferentes
// ✍️
// var enteroOpcional: Int?  un opcional de entero
// ✍️
// var stringOpcionao: Optional<String> un opcional de tipo string
// ✍️
// var boolOpcional: Bool? un opcional de tipo bool

/* **************************************************************************** */
// 06. Implicitly Unwrapped Optional Type
/* **************************************************************************** */

// Dar 3 ejemplos de 3 Tipos de opcionales desenvueltos implícitamente diferentes
// ✍️
// var opcionalImplicito: Int! un opcional implicito de tipo Entero
// ✍️
// var opcionalImplicitoString: String! un opcional implicito de tipo String
// ✍️
// var tuplaOpcionaldeInt: (Int, Int)! una tupla opcional de enteros

/* **************************************************************************** */
// 07. Inferencia de Tipos
/* **************************************************************************** */

// El compilador infiere el tipo de estas constantes, pero...
// ¿Cuál es su Tipo?
let elemento = "agua"
// ✍️
// String
let numero = 10_000
// ✍️
//Int, pero desconozco porque lo toma como int si tiene un _

let escribesSwift = true
// ✍️
//Bool

let colores = ["amarillo", "azul", "rojo"]
// ✍️
// Array<String>

