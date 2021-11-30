import UIKit

import Foundation

// Решение квадратного уравнения

let a = 1
let b = 50
let c = 50

let d = Double(b * b - 4 * a * c)

print(d)

if d == 0 {

    let oneX = -b / (2 * a)
    print(oneX)

} else if d > 0 {

    let oneX = (-b + Int(sqrt(d))) / (2 * a)
    let twoX = (-b - Int(sqrt(d))) / (2 * a)
    print("X1 = \(oneX)")
    print("X2 = \(twoX)")

} else if d < 0 {
    print("Корней нет")

}

// Площадь, периметр и гипотенуза прямоугольного треугольника
//
// P.S. Объявлено комментарием, так как переменные пересекаются с предыдущим кодом. Переменные a, b, c использовал, так как использовал математические формулы, поэтому это самый удобный выбор

let a = 3
let b = 6
let one = Double((a * a) + (b * b))
let c = Int(round(sqrt(one)))

print("Гипотенуза: \(c)")

let square = (a * b) / 2
print("Площадь: \(square)")

let perimeter = a + b + c
print ("Периметр: \(perimeter)")

// Доход по вкладам

var depositAmount = Double(100000) // сумма вклада

var annualPercentage = Double(13) // процент

var termDeposit = Double(5) // срок вклада

let income = (depositAmount * (annualPercentage / 100)) * termDeposit // доход

print(Int(income))

