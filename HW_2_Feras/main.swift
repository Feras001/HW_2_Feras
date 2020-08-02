//
//  main.swift
//  HW_2_Feras
//
//  Created by Feras Shaker on 02.08.2020.
//  Copyright © 2020 Feras Shaker. All rights reserved.
//

import Foundation

print("1. Написать функцию, которая определяет, четное или не четное число")
let array = [8, 13, 21, 30, 18, 29]
for choice in array {
    if choice % 2 == 0{
        print("\(choice) Четное число")
    }else {
        print("\(choice) Нечетное число")
    }
}

print("2. Написать функцию, которая определит делится ли число без остатка на 3.")
 
for define in array {
    if define % 3 == 0{
        print("\(define) Делится на 3 без остатка")
    }else {
        print("\(define) Без остатка не получится))")
    }
}

print("3. Создать возрастающий массив из 100 чисел.")

var increase: Array<Int> = []
for i in 1...100{
    increase.append(i)
}
print(increase)

print("4. Удалить из этого массива все четные числа и все числа, которые делятся на 3")

var even = increase.filter{ $0 % 2 == 0}
    print(even)
var numbers = increase.filter{ $0 % 3 == 0}
    print(numbers)
var answer = increase.filter{ $0 % 2 == 0 || $0 % 3 == 0 }
    print(answer)


print("5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.")
// F0 = 0, F1 = 1, Fn = Fn-2 + Fn-1, n >=2
//func fibonacci(f){
//    if f == 0 return 0;
//    if f == 1 return 1;
//    return fibonacci(f - 2) + fibonacci(f - 1)
//   }

func fibonacciArray(_ n: Int) -> [Double] {
    var fibonacci: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci
}
print(fibonacciArray(100))

print("6. Заполнить массив элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n (пусть будет 100), следуя методу Эратосфена, нужно выполнить следующие шаги::")

func primeNumbers(arrayPassed: [Int]) -> [Int] {
    var primes: [Int] = []
    var newArr = arrayPassed
    while let newP = newArr.first {
        primes.append(newP)
        newArr = newArr.filter { $0 % newP != 0 }
    }
    return primes
}
print(primeNumbers(arrayPassed: Array(2...100)))

