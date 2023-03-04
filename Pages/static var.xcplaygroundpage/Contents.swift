//: [Previous](@previous)

import Foundation


var greeting = "Hello, playground"



// difference of self and Self
// self はインスタンスを指す
// Self は型自体を表す

// 下の例のselfはインスタンスのプロパティnameとageに代入している。
//  self.name = Person().name
//  self.age = Person().age


class Person {
    var name: String
    var age: Int

    init (name: String, age: Int) {
        self.name = name
        self.age = age
    }

//    mutating func makeDisguise() -> Self {
//        name = "Bob"
//        age = Int.random(in: 1...99)
//        return self
//    }
}



var p1 = Person(name: "al", age: 23) // 全項目イニシャライザ　コンビニ１　class(住所1)
var p2 = p1 // コンビニ２個目　　class (住所2)

p2.age = 100

p1
p2



//var alice = Person(name: "Alice", age: 22)
//print(alice)
//print(alice.makeDisguise())


let name = "高橋"
let who = name + "さん"


v


//: [Next](@next)

