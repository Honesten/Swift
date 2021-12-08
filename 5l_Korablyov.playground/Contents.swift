import UIKit
import Darwin

enum Brand {
    case mitsu
    case mb
    case bmw
    case toyota
}

enum Transmission {
    case manual
    case auto
}

enum Engine {
    case off
    case on
}

enum Windows {
    case open
    case closed
}

enum Door {
    case open
    case closed
}

protocol CarsProtocol {
    var brand: Brand { get set }
    var year: Int { get set }
    var color: String { get set }
    var mileage: Int { get set }
    var transmission: Transmission { get set }
    var trunkVolume: Int { get set }
    var engine: Engine { get set }
    var windows: Windows { get set }
    var door: Door { get set }

    func signaling()
}

extension CarsProtocol {
    mutating func onEngine() {
        engine = .on
        print("Двигатель запускается")
    }

    mutating func offEngine() {
        engine = .off
        print("Двигатель заглушен")
    }

    mutating func openWindows() {
        windows = .open
        print("Окна открываются")
    }

    mutating func closedWindows() {
        windows = .closed
        print("Окна закрываются")
    }

    mutating func printInfo() {
        print("Автомобиль: \nМарка: \(brand)\nГод выпуска: \(year)\nЦвет: \(color)\nПробег: \(mileage)\nТрансмиссия: \(transmission)\nОбъем багажника: \(trunkVolume)\nСтатус мотора: \(engine)\nСтатус окон: \(windows)\nСтатус дверей: \(door)")
    }
}

final class Cars: CarsProtocol {
    var brand: Brand
    var year: Int
    var color: String
    var mileage: Int
    var transmission: Transmission
    var trunkVolume: Int
    var engine: Engine
    var windows: Windows
    var door: Door

    init(brand: Brand,
         year: Int,
         color: String,
         mileage: Int,
         transmission: Transmission,
         trunkVolume: Int,
         engine: Engine,
         windows: Windows,
         door: Door) {
        self.brand = brand
        self.year = year
        self.color = color
        self.mileage = mileage
        self.transmission = transmission
        self.trunkVolume = trunkVolume
        self.engine = engine
        self.windows = windows
        self.door = door
    }

    func signaling() {
        switch door {
        case .closed:
            self.door = .closed
            print("Сигнализация: двери закрыты")
        case .open:
            self.door = .open
            print("Сигнализация: двери открыты")
        }
    }
}

var mitsu = Cars(brand: .mitsu, year: 2013, color: "Red", mileage: 100000, transmission: .auto, trunkVolume: 300, engine: .off, windows: .closed, door: .closed)
mitsu.signaling()

enum Spoiler {
    case open
    case closed
}

final class SportCars: CarsProtocol {
    var brand: Brand
    var year: Int
    var color: String
    var mileage: Int
    var transmission: Transmission
    var trunkVolume: Int
    var engine: Engine
    var windows: Windows
    var door: Door
    var spoiler: Spoiler

    init(brand: Brand,
         year: Int,
         color: String,
         mileage: Int,
         transmission: Transmission,
         trunkVolume: Int,
         engine: Engine,
         windows: Windows,
         door: Door,
         spoiler: Spoiler) {
        self.brand = brand
        self.year = year
        self.color = color
        self.mileage = mileage
        self.transmission = transmission
        self.trunkVolume = trunkVolume
        self.engine = engine
        self.windows = windows
        self.door = door
        self.spoiler = spoiler
    }

    func signaling() {
        switch door {
        case .closed:
            self.door = .closed
            print("Сигнализация: двери закрыты")
        case .open:
            self.door = .open
            print("Сигнализация: двери открыты")
        }
    }

    func openSpoiler() {
        spoiler = .open
        print("Спойлер открывается")
    }

    func closedSpoiler() {
        spoiler = .closed
        print("Спойлер закрывается")
    }
}

var sportMitsu = SportCars(brand: .mitsu, year: 2018, color: "Red", mileage: 500, transmission: .auto, trunkVolume: 300, engine: .off, windows: .closed, door: .closed, spoiler: .open)
sportMitsu.closedSpoiler()
sportMitsu.printInfo()

extension Cars: CustomStringConvertible {
    var description: String {
        return "Автомобиль: \nМарка: \(brand)\nГод выпуска: \(year)\nЦвет: \(color)\nПробег: \(mileage)\nТрансмиссия: \(transmission)\nОбъем багажника: \(trunkVolume)\nСтатус мотора: \(engine)\nСтатус окон: \(windows)\nСтатус дверей: \(door)"
    }
}

extension SportCars: CustomStringConvertible {
    var description: String {
        return "Автомобиль: \nМарка: \(brand)\nГод выпуска: \(year)\nЦвет: \(color)\nПробег: \(mileage)\nТрансмиссия: \(transmission)\nОбъем багажника: \(trunkVolume)\nСтатус мотора: \(engine)\nСтатус окон: \(windows)\nСтатус дверей: \(door)"
    }
}

print(mitsu.description)






