//
//  main.swift
//  Lab5-7_Swift
//
//  Created by Admin on 16.11.2020.
//

import Foundation
import Cocoa

//Lab 5
// набір з парними цифрами
let evenDigits: Set = [0, 2, 4, 6, 8]
// набір з непарними цифрами
let oddDigits: Set = [1, 3, 5, 7, 9]
// набір з змішаними цифрами
var differentDigits: Set = [3, 4, 7, 8]
var inter = differentDigits.intersection(oddDigits).sorted()
print("Cross values = \(inter)")

var aSet: Set = [1, 2, 3, 4, 5]
var bSet: Set = [1, 3]
if bSet.isStrictSubset(of: aSet) {
    print("bSet — субнабір для aSet")
}
if aSet.isStrictSuperset(of: bSet) {
    print("aSet — супернабір для bSet")
}
//Lab 6
typealias Chessman = [String:(alpha:Character,num:Int)?]; //шахова фігура
let chessmans: Chessman = ["Белая королева": (alpha: "A", num: 4), "Белый конь": (alpha: "B", num: 7), "Черная ладья": nil]

if let coordinates = chessmans["Белая королева"]  ?? nil {
    print("Белая королева: \(coordinates)")
} else {
    print("Белой королевы нет на игровом поле")
}

if let coordinates = chessmans["Белый конь"] ?? nil {
    print("Белый конь: \(coordinates)")
} else {
    print("Белого коня нет на игровом поле")
}

if let coordinates = chessmans["Черная ладья"] ?? nil {
    print("Черная ладья: \(coordinates)")
} else {
    print("Черной ладьи нет на игровом поле")
}

//Lab 7
var myFactorialRecursive = factorialRe(n: 10)
var myFactorial = factorial(n: 10)
print("Factorial recursive = \(myFactorialRecursive)")
print("Factorial = \(myFactorial)")


func factorialRe(n: Int) -> Int{
    if n == 0{
        return 1
    }
     
    return n * factorialRe(n: n-1)
}

func factorial(n: Int) -> Int{
     
    var result = 1;
    
    if n == 0{
        return 1
    }

    for i in 1...n {
        result *= i;
    }
    return result;
}
