import Foundation

/*
CLASE 5
Tópicos:

-Colecciones (Collections)
-For in Loops (Bucles)
*/

// Subscript Syntax []

// Operaciones sobre una Colección:
// Crear
// Leer
// Actualizar
// Remover
// Iterar (Recorrer sus miembros)
// Contar
// Comprobar si está vacía o llena

/// Colecciones
/// 1/3 Array
/// Un Array almacena valores del mismo tipo en una lista ordenada. Un mismo valor pueda aparecer en el array
/// múltiples veces en diferentes posiciones.

/* Como se escribe-declara un Array en Swift */

// Esta es la forma completa ↙️
let frutas: Array<String> = ["pera", "manzana", "naranja"]
// Esta es la forma abreviada
let verduras: [Int] = [10, 100, 1000, 10000]
// Esta es la forma sin declarar el tipo explícitamente (el compilador infiere el tipo de la constante como [String])
let deportes = ["fútbol", "voley", "tenis"]

// Con esta sintáxis declaramos un array vacío
var arrayVacio = [Bool]()
arrayVacio.isEmpty
// o así...
var otroArrayVacio = Array<Character>()
otroArrayVacio.isEmpty
// o así
var otroArrayVacioMas: [String] = []
otroArrayVacioMas.isEmpty

// Ejercicio 01:
// Declarar:
// 1. Tres array vacíos usando tres sintáxis diferentes
// ✍️
// 2. Un array inmutable que contenga las "estaciones del año"
// ✍️
// 3. Un array mutable que contenga "una lista de lenguajes a aprendidos y a aprender"
// ✍️

/* ********************************************************************** */
// Desafío 🕵️‍♂️
// Investigar cómo se puede  crear una array uniendo dos arrays existentes
// Dar un ejemplo de esto
// ✍️
/* ********************************************************************** */

/* Operando sobre un Array */

// Para saber si un array está vacío o no disponemos de la propiedad 'isEmpty'
var arraySinNada: [String] = []
arraySinNada.isEmpty

// Para contar cuantos miembros o elementos tiene un array disponemos de la propidad 'count'
var emojis: [String] = ["✊", "🛴", "🏊‍♂️"]
emojis.count

// Para agregar un elemento a un array tenemos dos formas:  (CREATE)
emojis += ["🎸"]
emojis.append("👨‍💻")

// Para recuperar o leer un elemento de un array disponemos de la "subscript syntax" (READ)
// Dentro de los corchetes pasamos el índice del elemento que queremos recuperar
emojis[1]

// Para actualizar el elemento de un array primero "apuntamos" al elemento a cambiar (UPDATE)
// y luego le asignamos el nuevo elemento
emojis[1] = "⏱"
emojis

// Disponemos de varias formas para borrar un elemento de un array (REMOVE)
emojis.removeFirst() // remueve el primer elemento
emojis.removeLast() // remueve el último
//emojis.removeAll() // remueve todos los elementos

// Ejercicio 02:
// Declarar un array mutable  con X elementos iniciales
// ✍️
// Contar cuantos elementos tiene
// ✍️
// Agregarle un nuevo elemento
// ✍️
// Borrarle un elemento
// ✍️
// Actualizarle el tercer elemento
// ✍️
// Comprobar con un condicional si el array está vacío o no (vaciarlo y volverlo a llenar)
// Si está lleno imprimir un mensaje acorde, si está vacío idem
// ✍️
// Imprimir en consola el array
// ✍️

// Iterando sobre un array
// Para iterar o recorrer un array disponemos del 'for-in loop'
let colores: [String] = ["amarillo", "rojo", "azul"]
// donde "color" representa cada elemento del array
// y "colores" el array a iterar
for color in colores {
    print(color) // esta línea se ejecuta 3 veces ya que este array contiene 3 elementos
}

// Ejercicio 03:
// Declara dos arrays, uno de Ints con 3 elementos y otro vacío
// ✍️
// Recorrerlo y en cada iteración sumarle 1 a cada elemento
// e insertar el resultado en el array vacío
// ✍️

// Ejemplo: [1, 2, 3] => [2, 3, 4]


/* ********************************************************************** */
// Desafío 🕵️‍♂️
// Investigar cómo se puede insertar un elemento en un array
// en una posición específica (por ejemplo en el índice 3)
// Dar un ejemplo de esto
// ✍️
/* ********************************************************************** */
