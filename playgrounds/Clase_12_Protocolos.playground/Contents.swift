import Foundation

// Clase 11

// Protocols
//

protocol FullyNamed {
    // Requerimientos del protocolo
    var fullName: String { get }
}

struct Person: FullyNamed {
    // Esta propiedad "edad"
    var edad: Int
    var fullName: String
}

let john = Person(edad: 10, fullName: "John Appleseed")
// john.fullName is "John Appleseed"
print(john.fullName)

class Starship: FullyNamed {
    
    // Propiedades de la clase en sí
    var prefix: String?
    var name: String
    
    // Inicializador de la clase
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}

var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
// ncc1701.fullName is "USS Enterprise"
print(ncc1701.fullName)


///////
protocol RandomNumberGenerator {
    // Método requerido de este protocolo
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    
    func random() -> Double {
        lastRandom = ((lastRandom * a + c)
            .truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}

let generator = LinearCongruentialGenerator()
print("Here's a random number: \(generator.random())")
// Prints "Here's a random number: 0.3746499199817101"
print("And another one: \(generator.random())")
// Prints "And another one: 0.729023776863283"

struct MiStruct: RandomNumberGenerator {

    let uno = 1
    
    func random() -> Double {
        return Double(Int.random(in: uno..<10))
    }
}

let miInstanciaHaciaMiStruct = MiStruct()
miInstanciaHaciaMiStruct.random()


