//: [Previous](@previous)

import Foundation


// classとstructの違い

class Person {
    var name: String
    var age: Int

    init (name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var p1 = Person(name: "al", age: 23) // 全項目イニシャライザ　コンビニ１　class(住所1)
var p2 = p1 // コンビニ２個目　　class (住所2)

p2.age = 100

p1
p2

