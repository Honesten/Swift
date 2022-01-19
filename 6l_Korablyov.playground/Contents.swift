import UIKit

struct Mashins {
    var model: String
    var serialNumber: Int
}

struct ProductionLine<T> {

    private var elements: [T] = []
    public var production: Bool {
        return elements.count == 0
    }

    mutating func push(element: T) {
        elements.append(element)
    }
    mutating func pop() -> T {
        return elements.removeLast()
    }

    public var firstInProduction: T? {
        if production {
            print("Производство: очередь пуста.")
            return nil
        } else {
            print("Первый в очереди: \(String(describing: elements.first))")
            return elements.first
        }
    }

    public var lastInProduction: T? {
        if production {
            print("Производство: очередь пуста.")
            return nil
        } else {
            print("Последний в очереди: \(String(describing: elements.last))")
            return elements.last
        }
    }

    func printProductionLine() {
        print(elements)
    }
}

var mashins = ProductionLine<Mashins>()
mashins.push(element: .init(model: "Bot13", serialNumber: 483))
mashins.push(element: .init(model: "Bot24", serialNumber: 638))

mashins.printProductionLine()
mashins.firstInProduction
