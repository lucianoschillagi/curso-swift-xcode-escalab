import Foundation

// Clase 7

// Control Flow

// Early Exit

// Keywords: guard let, else

// ➡️ Una declaración "guard", al igual que una declaración "if", ejecuta código dependiendo del resultado booleano de una expresión. Puedes usar "guard" cuando necesitas que una condición deba ser cierta para que el código luego del "guard" sea ejecutado. A diferencia de la declaración "if", una declaración "guard", SIEMPRE tiene que tener una rama "else". El código dentro de "else" será ejecutado si la condición no es true.

// Ejemplo:

// Define una función 'greet' que recibirá en el parámetro 'person' un diccionario de tipo '[String: String]'
func greet(person: [String: String]) {
    
    // Mediante la declaración "guard" nos aseguramos de recibir en la entrada
    // de la función la clave "name" con su correspondiente valor
    guard let name = person["name"] else {
        return
    }
    
    // Este código se ejecutará si pasa el "guard"
    // es decir, si la condición anterior es cierta
    // entonces tomará la constante almacenada en el "guard" ("name")
    // y la imprimirá interpolada en un string literal
    print("Hello \(name)!")

    // En este segundo "guard" nos aseguramos de recibir la clave "location"
    // sino lo recibimos en la llamada de la función se ejecutará el código
    // dentro del "else"
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    // Sólo s la condición del "guard" anterior es true se ejecutará esta línea
    // donde imprimiremos el valor alojado en "location"
    print("I hope the weather is nice in \(location).")
}

// Llamamos a la función y le pasamos el argumento requerido "person"
greet(person: ["name": "John"])
// Prints "Hello John!"
// Prints "I hope the weather is nice near you."

greet(person: ["name": "Jane", "location": "Cupertino"])
// Prints "Hello Jane!"
// Prints "I hope the weather is nice in Cupertino."

greet(person: ["genre": "male"])
// No imprime nada porque la clave "genre" no fue inspeccionada por ningún "guard"


// Otro ejemplo
let miDiccionario = ["uno": 1, "dos": 2, "tres": 3]

func corroborarQueUnoDosTresEstenEnMiDicc() {
    
    guard let esteNroTieneQueEstarEnMiDicc = miDiccionario["cuatro"] else {
        print("Este número NO está en mi diccionario")
        return
    }
    
    // Esta línea se ejecuta sólo si la condición del "guard" es "true"
    print("Mi diccionario contiene el '\(esteNroTieneQueEstarEnMiDicc)'")
}

corroborarQueUnoDosTresEstenEnMiDicc()



