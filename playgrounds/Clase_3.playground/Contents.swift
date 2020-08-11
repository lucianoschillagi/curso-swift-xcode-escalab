import Foundation

/* Tópicos:
 
 -Operadores Lógicos
    -NOT
    -EQUAL
    -OR
 
 -Strings and Characters
    -Recorriendo brevemente la documentación
    -Strings Literales
    -Strings Multilínea
    -Caracteres especiales en String Literals (Unicode)
    -Extendiendo Strings
    -Inicializando un String
    -Mutabilidad de un String
    -Los String son "Tipos de Valor" (Value Types)
    -Trabajando con Caracteres
    -Concatenando Strings y Caracteres
    -Interpolación de Strings
    -Unicode
    -Contando Caracteres
    -Accediendo y modificando un String
    -Insertando y removiendo un Caracter o un Substring
    -Sub-strings
    -Comparando strings
    -Sufijos y Prefijos en un String
    -Representación Unicode de Strings
 */

/// Operadores Lógicos

// Operador NOT (!)
let allowedEntry = false

if !allowedEntry {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

// Operador AND (&&)
let enteredDoorCode = true
let passedRetinaScan = true

if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

// Operador OR (||)
let hasDoorKey = true
let knowsOverridePassword = false
let knowsSecretPassword = false
if hasDoorKey || knowsOverridePassword || knowsSecretPassword  {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"

/// Strings & Characters
// String Literal

// Special Characters in String Literals
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{0393}" // 💖, Unicode scalar U+1F496
let emoticon = "😛"

print(wiseWords)

// Extended String Delimeters
let threeMoreDoubleQuotationMarks = #"\t hola"#
print(threeMoreDoubleQuotationMarks)

var emptyString: String = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other

if emptyString.isEmpty {
    print("Nothing to see here")
}


// Prints "Nothing to see here"
var variableString: String = "Horse"
variableString += " and carriage"
print(variableString)
// variableString is now "Horse and carriage"

var constantString = "Highlander"
constantString += " and another Highlander"
// this reports a compile-time error - a constant string cannot be modified


for character in "Basketball" {
    print(character)
}

// String Intepolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message is "3 times 2.5 is 7.5"
print(message)

let miNombre = "Luciano"
let miNombreCompleto = "\(miNombre) Schillagi"
