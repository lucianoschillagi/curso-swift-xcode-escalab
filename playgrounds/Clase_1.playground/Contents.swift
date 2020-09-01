import Foundation

/* Constantes */

// Con la palabra reservada "let" declaramos una variable
// Desmenuzemos esta línea de código por partes:

let miNombre: String = "Luciano"

// 1. a través de la palabra reservada "let" declaramos una constante
// 2. a esta constante debemos darle un nombre que describa qué contiene, en este caso "miNombre" ya que va a contener un string con mi nombre
// 3. con el tipo de anotación ":String" declaramos el tipo de dato que estamos almancenando, en este caso, un string
// 4. con el operador "=" le asignamos a la constante un valor, en este caso un string literal
// 5. finalmente, "Luciano" es el valor, de tipo String que almacenamos dentro de la constante


// Al declarar una constante, no podemos luego cambiarle su valor, si hacemos esto el compilador
// nos lanzará un error

// miNombre = "Abel"

// ↑ da un error ya que anteriormente declaramos que el valor de la constante "miNombre" va a permanecer siempre igual


// EJERCICIOS 💪:
// 1.
// a. Declarar una constante con tu número favorito con la sintáxis anterior.
// b. Imprimir en consola el valor de la constante.
let numeroFavorito = 9


// 2.
// a. Declarar una constante llamada "interruptor" que represente dos estados posibles, encendido o apagado
// b. Imprimir en consola el valor de la constante.


// 3. Describir estas líneas de código (documentar)
// la pregunta a responder sería "¿Qué hace esta línea de código?"

// Les doy un primer ejemplo:
// Declara una constante llamada "anioActual" de tipo "Int" (entero) que almacena el valor "2020"
let anioActual: Int = 2020

// Borrar esto y escribir documentación ✍️
let primerLetraAbecedario: Character = "A"

// Borrar esto y escribir documentación ✍️
let esDeNoche: Bool = true

// Borrar esto y escribir documentación ✍️
let lenguajeCreadoPorApple: String = "Swift"
