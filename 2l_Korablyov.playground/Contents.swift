import UIKit

import Foundation

//1. Написать функцию, которая определяет, четное число или нет.

func numbers(number: Int) {
    if number % 2 == 0 {
        print("Число чётное")
    } else if number % 2 > 0 {
        print("Число нечётное")
    }
}

numbers(number: 5)

// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func numbers(number: Int) {
    if number % 3 == 0 {
        print("Число делится без остатка на 3")
    } else if number % 3 > 0 {
        print("Число не делится без остатка на 3")
    }
}

numbers(number: 6)

//3. Создать возрастающий массив из 100 чисел.
//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var increasing: [Int] = []

for i in 0...100 {
    increasing.append(i)
}

var delIncreasing = increasing.filter {$0 % 2 != 0 && $0 % 3 == 0}

print(delIncreasing)

// 6. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

func fibonacciNumbers (_ n: Int) -> [Double] {
    var fibonacci: [Double] = [1, 1]
    for i in 2...n {
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci
}

print(fibonacciNumbers(50))
