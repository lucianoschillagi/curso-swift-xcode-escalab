import Foundation

/*  Práctica sobre "Types" 🏋️‍♀️  */

// Ejercicios

/* ****************************************************** */
// 01. Identificar del Tipo (o "Type Indentifier")
/* ****************************************************** */

// ¿Cuál es el "Identificador" de estos Tipos?
func f1() -> Int { return 0 }
// ✍️

let tienesMascota = false
// ✍️

let suNombre = "Esteban A."
// ✍️

typealias Coordenada = (Double, Double)
let misCoordenadas: Coordenada = (x: 45.2434, y: 34.53454)
// ✍️

let numeros: [Int] = [2, 34, 4, -4, 0, 32]
// ✍️

func f2(p1:String, p2:Int, p3: Bool) {}
// ✍️

let miDicc = ["color": "verde", "numero": "4", "letra": "T"]
// ✍️

/////////////////////////////////////////////////////////////////
// Para los siguientes ejercicios consultar a la documentación
// https://docs.swift.org/swift-book/ReferenceManual/Types.html#

/* **************************************************************************** */
// 02. Function Type
/* **************************************************************************** */

// Dar 3 ejemplos de 3 Tipos de funciones diferentes
// ✍️
// ✍️
// ✍️

/* **************************************************************************** */
// 03. Array Type
/* **************************************************************************** */

// Dar 3 ejemplos de 3 Tipos de array diferentes
// ✍️
// ✍️
// ✍️

/* **************************************************************************** */
// 04. Dictionary Type
/* **************************************************************************** */

// Dar 3 ejemplos de 3 Tipos de diccionarios diferentes
// ✍️
// ✍️
// ✍️

/* **************************************************************************** */
// 05. Optional Type
/* **************************************************************************** */

// Dar 3 ejemplos de 3 Tipos de opcionales diferentes
// ✍️
// ✍️
// ✍️

/* **************************************************************************** */
// 06. Implicitly Unwrapped Optional Type
/* **************************************************************************** */

// Dar 3 ejemplos de 3 Tipos de opcionales desenvueltos implícitamente diferentes
// ✍️
// ✍️
// ✍️

/* **************************************************************************** */
// 07. Inferencia de Tipos
/* **************************************************************************** */

// El compilador infiere el tipo de estas constantes, pero...
// ¿Cuál es su Tipo?
let elemento = "agua"
// ✍️

let numero = 10_000
// ✍️

let escribesSwift = true
// ✍️

let colores = ["amarillo", "azul", "rojo"]
// ✍️

