import UIKit

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
enum HeadLights {
    case on
    case off
}
enum Door {
    case open
    case closed
}

class Cars {
    var brand: Brand
    var year: Int
    var color: String
    var mileage: Int
    var transmission: Transmission
    var trunkVolume: Int
    var engine: Engine
    var windows: Windows
    var headLights: HeadLights
    var door: Door
    static var carCount = 0
    init(brand: Brand,
         year: Int,
         color: String,
         mileage: Int,
         transmission: Transmission,
         trunkVolume: Int,
         engine: Engine,
         windows: Windows,
         headLights: HeadLights,
         door: Door) {
        self.brand = brand
        self.year = year
        self.color = color
        self.mileage = mileage
        self.transmission = transmission
        self.trunkVolume = trunkVolume
        self.engine = engine
        self.windows = windows
        self.headLights = headLights
        self.door = door
        Cars.carCount += 1
    }

    func onEngine() {
        engine = .on
        print("Двигатель запускается")
    }
    func offEngine() {
        engine = .off
        print("Двигатель заглушен")
    }
    func openWindows() {
        windows = .open
        print("Окна открываются")
    }
    func closedWindows() {
        windows = .closed
        print("Окна закрываются")
    }
    func onHeadLights() {
        headLights = .on
        print("Фары включаются")
    }
    func offHeadLights() {
        headLights = .off
        print("Фары выключаются")
    }
    func printInfo() {
        print("Автомобиль: \nМарка: \(brand)\nГод выпуска: \(year)\nЦвет: \(color)\nПробег: \(mileage)\nТрансмиссия: \(transmission)\nОбъем багажника: \(trunkVolume)\nСтатус мотора: \(engine)\nСтатус окон: \(windows)\nСтатус фар: \(headLights)\nСтатус дверей: \(door)")
    }
    static func countInfo() {
        print("Кол-во объявленных автомобилей: \(self.carCount)")
    }
    class CarsSport: Cars {
    }
}

let mitsu = Cars(brand: .mitsu, year: 2014, color: "Red", mileage: 120000, transmission: .auto, trunkVolume: 300, engine: .off, windows: .closed, headLights: .off, door: .closed)

Cars.countInfo()
mitsu.printInfo()
mitsu.onHeadLights()

enum Spoiler {
    case on
    case off
}

class CarsSport: Cars {
    var spoiler: Spoiler
    init(brand: Brand,
         year: Int,
         color: String,
         mileage: Int,
         transmission: Transmission,
         trunkVolume: Int,
         engine: Engine, windows: Windows,
         headLights: HeadLights,
         door: Door,
         spoiler: Spoiler) {
        self.spoiler = spoiler
        super.init(brand: brand, year: year, color: color, mileage: mileage, transmission: transmission, trunkVolume: trunkVolume, engine: engine, windows: windows, headLights: headLights, door: door)
    }

    func onSpoiler() {
        spoiler = .on
        print("Спойлер поднимается")
    }
    func offSpoiler() {
        spoiler = .off
        print("Спойлер опускается")
    }
    override func printInfo() {
        print("\(super.printInfo())\nСостояние спойлера: \(spoiler)")
    }
}

var mitsuSport = CarsSport(brand: .mitsu, year: 2016, color: "Black", mileage: 5000, transmission: .auto, trunkVolume: 300, engine: .off, windows: .closed, headLights: .off, door: .closed, spoiler: .off)

mitsuSport.printInfo()

enum AutoPumpingWhils {
    case on
    case off
}

class NewCarsSport: CarsSport {
    var autoPumpingWhils: AutoPumpingWhils
    init(brand: Brand,
         year: Int,
         color: String,
         mileage: Int,
         transmission: Transmission,
         trunkVolume: Int,
         engine: Engine,
         windows: Windows,
         headLights: HeadLights,
         door: Door,
         spoiler: Spoiler,
         autoPumpingWhils: AutoPumpingWhils) {
        self.autoPumpingWhils = autoPumpingWhils
        super.init(brand: brand, year: year, color: color, mileage: mileage, transmission: transmission, trunkVolume: trunkVolume, engine: engine, windows: windows, headLights: headLights, door: door, spoiler: spoiler)
    }

    func onAutoPumpingWhils() {
        autoPumpingWhils = .on
        print("Автоподкачка колёс активирована")
    }
    func offAutoPumpingWhils() {
        autoPumpingWhils = .off
        print("Автоподкачка колёс отключена")
    }
    override func printInfo() {
        print("\(super.printInfo())\nСостояние системы автоподкачки колёс: \(autoPumpingWhils)")
    }
}

var mitsuNewSport = NewCarsSport(brand: .mitsu, year: 2018, color: "White", mileage: 5000, transmission: .auto, trunkVolume: 200, engine: .off, windows: .closed, headLights: .off, door: .closed, spoiler: .off, autoPumpingWhils: .off)

mitsuNewSport.openWindows()
mitsuNewSport.printInfo()

enum CargoHachDoor {
    case on
    case off
}

final class TrunkCars: Cars {
    var cargoHatchDoor: CargoHachDoor
    init(brand: Brand,
         year: Int,
         color: String,
         mileage: Int,
         transmission: Transmission,
         trunkVolume: Int,
         engine: Engine,
         windows: Windows,
         headLights: HeadLights,
         door: Door,
         cargoHatchDoor: CargoHachDoor) {
        self.cargoHatchDoor = cargoHatchDoor
        super.init(brand: brand, year: year, color: color, mileage: mileage, transmission: transmission, trunkVolume: trunkVolume, engine: engine, windows: windows, headLights: headLights, door: door)
    }

    func onCargoHatchDoor() {
        cargoHatchDoor = .on
        print("Дверь грузового отсека открывается")
    }
    func offCargoHatchDoor() {
        cargoHatchDoor = .off
        print("Дверь грузового отсека закрыватеся")
    }
}

var mbTrunk = TrunkCars(brand: .mb, year: 2021, color: "Black", mileage: 0, transmission: .auto, trunkVolume: 1000, engine: .off, windows: .closed, headLights: .off, door: .closed, cargoHatchDoor: .on)

