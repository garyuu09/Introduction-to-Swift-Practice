//: [Previous](@previous)

import Foundation



let plus: (Int, Int) -> Int = (+)
plus(1, 1) //2

let minus: (Int, Int) -> Int = (-)
minus(1, 1) //0



// Locoさんより共有頂いたサンプルコード
let sum: (Int, Int) -> Int = { (num1:Int,num2:Int) -> Int in return num1 + num2 }
 sum(5, 3) // 8


let a = (+)(10, 10) // 20
let b = (*)(5, 5) // 25
let c = { $0 + $1 }(10, 10) // 20


func cal(sign: (Int, Int) -> Int) -> Int {
    return sign(10, 10)
}

cal(sign: { $0 * $1 }) // 100

cal(sign: +) // 20
cal(sign: -) // 0
cal(sign: *) // 100
cal(sign: /) // 1


let calculation: (Int, Int) -> Int = (+)


func calc (_ num1: Int,_ num2: Int,_ calculation:(Int, Int) -> Int) -> Int {
    let answerNum = calculation(num1, num2)
    return answerNum
}

let result1 = calc(3,5, (+)) // 8
let result2 = calc(3,5, (-)) // -2
let result3 = calc(3,5, (*)) // 15




//: [Next](@next)
