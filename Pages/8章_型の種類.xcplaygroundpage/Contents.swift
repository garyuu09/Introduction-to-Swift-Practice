//: [Previous](@previous)

import Foundation


// 8.2 値の受け渡し方法による分類
// 値型 値を表す型　（構造体 struct , 列挙型 enum）

var a = 4.0 // aに4.0が入る
var b = a // bに4.0が入る(aが持つ4.0への参照ではなく値である4.0が入る)
a.formSquareRoot() // aの平方根を取る
a // aは2.0になる
b // bはaの変更の影響を受けず4.0のままとなる


struct Color {
    var red: Int
    var green: Int
    var blue: Int
}

var aa = Color(red: 255, green: 0, blue: 0) // aaに赤を代入
var bb = aa // bbに赤を代入
aa.red = 0 // aを黒に変更する

// aは黒になる
aa.red // 0
aa.green // 0
aa.blue // 0

// bは赤になる
bb.red // 255
bb.green // 0
bb.blue //0


// mutatingキーワード 自身の値の変更を宣言するキーワード

extension Int {
    mutating func increment() {
        self += 1
    }
}

var num1 = 1 //1
num1.increment() // 2 (num1に再代入が行われている)

let num2 = 1
//num2.increment() // num2に再代入できないためコンパイルエラー


// 参照型 値への参照を表す型　（class）

class IntBox {
    var value: Int

    init(value: Int) {
        self.value = value
    }
}

var value1 = IntBox(value: 1) // aはIntBox(value: 1)を参照する
var value2 = value1 // value2はvalue1と同じインスタンスを参照する

// value1.valueとvalue2.valueは両方とも1
value1.value //1
value2.value //1

// value1.valueを2に変更する
value1.value = 2

// value1.valueとvalue2.valueは両方とも2
value1.value
value2.value


// 8.3構造体 - 値型のデータ構造

struct Article {
    let id: Int
    let title: String
}



