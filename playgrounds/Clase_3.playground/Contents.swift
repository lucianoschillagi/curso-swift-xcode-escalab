import Foundation

/* Tópicos vistos en Clase 3:
 
 -Operadores Lógicos
    -NOT
    -EQUAL
    -OR
 
 -Strings and Characters
    -Strings Literales
    -Strings Multilínea
    -Caracteres especiales en String Literals (Unicode)
    -Delimitadores Strings
    -Inicializando un String
    -Mutabilidad de un String
    -Los String son "Tipos de Valor" (Value Types)
    -Trabajando con Caracteres
    -Concatenando Strings y Caracteres
    -Interpolación de Strings
    -Unicode
 
 */

// Ejercicios sobre Clase 3 🤓

/// Operadores Lógicos

/* Operador NOT (!) */
let encendido: Bool = false
// 1.Cambiar el valor de la constante "encendido" a "true" usando el operador NOT
// ✍️
let estaSoleado = true
// 2.Cambiar el valor de la constante "estaSoleado" a "false" usando el operador NOT
// ✍️

// 3.En este condicional:
// qué sentencia se ejecturá y porqué?
if !estaSoleado {
    print("Está nublado")
} else {
    print("Está soleado")
}

/* Operador AND (&&) */
// 4.El valor de qué constante debería cambiar para que se cumpla la condición y se ejecute el print del condicional?
let esDomingo = true
let estaLloviendo = false

if estaSoleado && estaLloviendo {
    print("Dormir la siesta")
}

// 5.TODO: Declarar dos constantes y un condicional que ejecute un print con un mensaje si ambas son ciertas
// ✍️

/* Operador OR (||) */
// 6.TODO: Declarar dos constantes y un condicional que ejecute un print con un mensaje si alguna de las dos es cierta
// ✍️

// 7.TODO: Evaluar el estado de 3 constantes usando los operadores AND y OR
// Ejemplo:
let constanteUno: Bool = false
let constanteDos: Bool = false
let constanteTres: Bool = false

if constanteUno && constanteDos || constanteTres {
    print("Es cierto!")
} else {
    print("No es cierto")
}

// 8.Escribir ahora uno similar al anterior pero que ejecute la rama "true"
//  ✍️


/// Strings & Characters

//-Strings Literales
//-Strings Multilínea
//-Caracteres especiales en String Literals (Unicode)
//-Delimitadores de Strings
//-Inicializando un String
//-Mutabilidad de un String
//-Los String son "Tipos de Valor" (Value Types)
//-Trabajando con Caracteres
//-Concatenando Strings y Caracteres
//-Interpolación de Strings
//-Unicode

// 9.Declarar 6 strings literales
//  ✍️

// 10.Declarar 3 strings multilínea
//  ✍️

// 11. Investigar: ¿Cómo hacer para aplicar tabulación en un string multilínea?
// Dar 2 ejemplos
// Ref: https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html

// 12. ¿Qué tipos de "caracteres especiales" podemos incluir dentro de un string literal? (son 2)
// Dar 2 ejemplos de cada uno ✍️
// Ref: https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html

// 13.¿Para qué sirven los "delimitadores de strings"?
// Dar 3 ejemplos de uso ✍️

// 14.¿De qué dos formas podemos inicializar un string?
// Dar 3 ejemplos de cada una de estas formas ✍️

// 15.¿Mediante qué operador podemos concatenar un string con otro?
// Dar 3 ejemplos ✍️

// 16.¿Mediante qué mecanismo podemos acceder a cada uno de los miembros de un string? (es decir, a cada uno de los caracteres que lo conforman)
// Usar este mecanismo recorriendo 2 strings diferentes ✍️

// 17. Dar 3 ejemplos de cómo concatenar string y caracteres
// ✍️

// 18. Dar 4 ejemplos de cómo interpolar un string
// a) interpolándole una constante
// b) interpolándole una variable
// c) interpolándole una expresión
// d) usando en la interpolación un delimitador
// ✍️

// 19. Invocar caracteres Unicode con la sintáxis "\u{CODIGO}"
// Declarar 4 constantes que almacenen caracteres que no sean ni letras ni números. Imprimirlos en consola.
// Ref: https://unicode-table.com/es/
// Ejemplo:
let precomposed: Character = "\u{D55C}"
// ✍️

