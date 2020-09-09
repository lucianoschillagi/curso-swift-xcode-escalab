import Foundation

// Clase 10

// Extensions

// Keywords: extension

/*
 Index:
 - Extension Syntax
 - Computed Properties
 - Initializers
 - Methods
 - Subscripts
 - Nested Types
 */

/* ➡️ Las "extensiones" en Swift añaden nueva funcionalidad a una clase, estructura, enumeración o protocolo. Esto incluye la habilidad de extender tipos de los cuales no tienes acceso al código fuente original.
*/

/* ➡️ En Swift puedes extender un protocolo para proveerle implementaciones a sus requerimientos o para añadir funcionalidad extra de la cual los tipos conformados puedan adquirir esa ventaja.
*/

/* **************************************************************************** */
// Extension Syntax
/* **************************************************************************** */

struct SomeType {
    let uno = 1
    // toda las definición aquí...
}

extension SomeType {
    // new functionality to add to SomeType goes here
    
    
    func miMetodoExtension() {
        print("miMetodoExtension")
    }
}

let someType = SomeType()
someType.miMetodoExtension()


/* **************************************************************************** */
// Compueted Properties
/* **************************************************************************** */

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let distancia: Double = 30
distancia.km
distancia.ft

extension String {
    
    func imprimirMiNombre() {
        print("Luciano")
    }
    
}
let str: String = ""
str.count


/* **************************************************************************** */
// Initializers
/* **************************************************************************** */


/* **************************************************************************** */
// Methods
/* **************************************************************************** */

extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

10.repetitions {
    print("Hello!")
}

/* **************************************************************************** */
// Subscripts
/* **************************************************************************** */

extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}
746381295[0]
// returns 5
746381295[1]
// returns 9
746381295[2]
// returns 2
746381295[8]
// returns 7


/* **************************************************************************** */
// Nested Types
/* **************************************************************************** */

extension Int {
    
    enum Kind {
        case negative, zero, positive
    }
    
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

func printIntegerKinds(_ numbers: [Int]) {
    for number in numbers {
        switch number.kind {
        case .negative:
            print("- ", terminator: "")
        case .zero:
            print("0 ", terminator: "")
        case .positive:
            print("+ ", terminator: "")
        }
    }
    print("")
}

printIntegerKinds([3, 19, -27, 0, -6, 0, 7])


