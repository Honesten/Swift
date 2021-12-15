import UIKit
import Foundation

class Machines {
    private var bots = [
        "Bob": 356,
        "Eric": 814,
        "Carl": 900
    ]

    func serialNumber(atName name: String) -> Int? {
        return bots[name]
    }

    func guardFunc() -> String {
        guard bots.count < 1 else {
            return "Боты на месте"
        }
        return "Ботов нет"
    }
}

let machins = Machines()
machins.serialNumber(atName: "Bobb")
machins.guardFunc()

//TO:DO Не разобрался со 2 заданием




