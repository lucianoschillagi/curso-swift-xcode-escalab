import Foundation
/* ********************************************************************** */
// Desafío :male-detective:
// Investigar cómo podríamos ordenar un diccionario
// Existe un método para esto?
// Dar un ejemplo
// :writing_hand:
/* ********************************************************************** */

let dict = [1 : "one", 2 : "two", 3 : "three"]

let sortedDict = dict.sorted { $0 < $1 } .map { $0 }
print(sortedDict)

let sortedValues = dict.sorted { $0.value < $1.value } .map { $0.value }
print(sortedValues)

let reverseSortedValues = dict.sorted { $0.value > $1.value } .map { $0.value }
print(reverseSortedValues)

let sortedKeys = dict.sorted { $0.key < $1.key } .map { $0.key }
print(sortedKeys)

let reverseSortedKeys = dict.sorted { $0.key > $1.key } .map { $0.key }
print(reverseSortedKeys)



