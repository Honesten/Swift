import UIKit

enum Brand {
    case mitsu, mb, bmw, toyota
}
enum Transmission {
    case manual, auto
}
enum Engine {
    case off, on
}
enum Windows {
    case open, closed
}
enum HeadLights {
    case on, off
}
enum Door {
    case open, closed
}

struct CarOptions {
    var brand: Brand
    var year: Int
    var color: String
    var mileage: Int

    func printMileage() {
        print("Автомобиль проехал: \(mileage)")
    }
    var transmission: Transmission
    var trunkVolume: Int
    var engine: Engine {
        willSet {
            if newValue == .on {
                print("Мотор запускается")
            } else {
                print("Мотор выключается")
            }
        }
    }
    var windows: Windows

    mutating func closedWindows() {
        self.windows = .closed
        print("Окна закрываются")
    }
    mutating func openWindows() {
        self.windows = .open
        print("Окна открываются")
    }
    var headlights: HeadLights

    mutating func offHeadlights() {
        self.headlights = .off
        print("Фары выключены")
    }
    mutating func onHeadlights() {
        self.headlights = .on
        print("Фары включены")
    }
    var door: Door

    mutating func openDoor() {
        self.door = .closed
        print("Двери открыты")
    }

    mutating func closeDoor() {
        self.door = .open
        print("Двери закрыты")
    }

    init(brand: Brand,
         year: Int,
         color: String,
         mileage: Int,
         transmission: Transmission,
         trunkVolume: Int,
         engine: Engine,
         windows: Windows,
         headlights: HeadLights,
         door: Door) {
        self.brand = brand
        self.year = year
        self.color = color
        self.mileage = mileage
        self.transmission = transmission
        self.trunkVolume = trunkVolume
        self.engine = engine
        self.windows = windows
        self.headlights = headlights
        self.door = door
    }

    init?(brand: Brand,
          year: Int,
          color: String,
          mileage: Int,
          transmission: Transmission,
          trunkVolume: Int) {
        guard mileage > 0 else { return nil }
        self.brand = brand
        self.year = year
        self.color = color
        self.mileage = mileage
        self.transmission = transmission
        self.trunkVolume = trunkVolume
        self.engine = .off
        self.windows = .closed
        self.headlights = .off
        self.door = .closed
    }


    func printInfo() {
        print("Автомобиль: \nМарка: \(brand)\nГод выпуска: \(year)\nЦвет: \(color)\nПробег: \(mileage)\nТрансмиссия: \(transmission)\nОбъем багажника: \(trunkVolume)\nСтатус мотора: \(engine)\nСтатус окон: \(windows)\nСтатус фар: \(headlights)\nСтатус дверей: \(door)")
    }

}


var mitsu = CarOptions(brand: .mitsu, year: 2013, color: "red", mileage: 120000, transmission: .auto, trunkVolume: 300, engine: .off, windows: .closed, headlights: .off, door: .closed)
var mb = CarOptions(brand: .mb, year: 2007, color: "white", mileage: 240000, transmission: .manual, trunkVolume: 500, engine: .off, windows: .closed, headlights: .off, door: .open)
var bmw = CarOptions(brand: .bmw, year: 1997, color: "blue", mileage: 600, transmission: .manual, trunkVolume: 250, engine: .off, windows: .closed, headlights: .off, door: .closed)
var toyota = CarOptions(brand: .toyota, year: 2018, color: "black", mileage: 47000, transmission: .manual, trunkVolume: 300)

mitsu.windows = .closed
mitsu.mileage = 300
mitsu.printMileage()
mb.closedWindows()
mb.onHeadlights()
bmw.closeDoor()
mitsu.openWindows()
mitsu.engine = .off

mitsu.printInfo()
mb.printInfo()
bmw.printInfo()
