//: [Previous](@previous)

import Foundation

// if文
let value = 1
if value > 0 { // 条件式でBool型を返すものでないいけない。
    print("valueはゼロより大きい値です")
}

// else節
if value <= 0 {
    print("valueは0以下です")
} else {
    print("valueは0より大きいです")
}

// 複数の条件式を列挙
if value < 0 {
    print("valueは0未満です")
} else if value <= 3 {
    print("valueは0以上3以下です")
} else {
    print("valueは3より大きいです")
}

// if let文 値の有無による分岐
// オプショナルバインディングを行う条件分岐文

let optionalA = Optional(1)

if let a = optionalA {
    print("値は\(a)です")
} else {
    print("値が存在しません")
}

//複数のoptional<Wrapped>型の値を同時に取り出す

let optionalB = Optional("b")
let optionalC = Optional("c")

if let b = optionalB, let c = optionalC {
    print("値は\(b)と\(c)です")
} else {
    print("どちらかの値が存在しません")
}



//: [Next](@next)
