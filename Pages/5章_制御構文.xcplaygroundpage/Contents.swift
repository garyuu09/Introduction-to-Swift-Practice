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
    print(type(of: a))
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

// if let , as?演算子による型のダウンキャスト

let any: Any = 1

if let int = any as? Int {
    print("値はInt型の\(int)です")
}


// guard文 条件不成立時に早期退出する分岐

//guard 条件式 else {
//    条件式がfalseの場合に実行される文
//    guard文が記述されているスコープの外に退出する必要がある
//}

func someFunction() {
    let value = -1

    guard value >= 0 else {
        print("0未満の値です")
        return
    }
}
someFunction()

// guard文のスコープ外への退出の強制
func printIfPositive(_ a: Int){
    guard a > 0 else {
        return
    }

    // guard文以降ではa > 0が成り立つことが保証される
    print(a)
}

printIfPositive(1)


func checkFunction() {
    let a: Any = 1

    guard let int = a as? Int else {
        print("aはInt型ではありません")
        return
    }

    // intはguard文以降でも使用可能
    print("値はInt型の\(int)です")
}
checkFunction()



// if文との使い分け
// if let文 vs guard let文

func add(_ optionalA: Int?, _ optionalB: Int?) -> Int? {
    let a: Int
    if let unwrappedA = optionalA {
        a = unwrappedA
    } else {
        print("第一引数に値が入っていません")
        return nil
    }
    let b: Int
    if let unwrappedB = optionalB {
        b = unwrappedB
    } else {
        print("第二引数に値が入っていません")
        return nil
    }
    return a + b
}

add(Optional(1), Optional(2))

// guard let文

func guardAdd(_ optionalA: Int?, _ optionalB: Int?) -> Int? {
    guard let a = optionalA else {
        print("第一引数に値が入っていません")
        return nil
    }

    guard let b = optionalB else {
        print("第二引数に値が入っていません")
        return nil
    }

    return a + b
}

guardAdd(Optional(1), Optional(2))



// switch文
// switch 制御式 {
//case パターン1:
// 制御式がパターン1にマッチした場合に実行される文
//case パターン2:
// 制御式がパターン2にマッチした場合に実行される文
//default:
// 制御式がいづれのパターンにもマッチしなかった場合に実行される文
//}

let a = 1

switch a {
case Int.min..<0:
    print("aは負の値です")
case 1..<Int.max:
    print("aは正の値です")
default:
    print("aは0です")
}
// 「../」半開区間を表す。

enum SomeEnum {
    case foo
    case bar
    case baz
}

let foo = SomeEnum.foo

switch foo {
case .foo:
    print(".foo")
case .bar:
    print(".bar")
case .baz:
    print(".baz")
}


// whereキーワード
//switch 制御式 {
//case パターン where 条件式:
//    制御式がパターンにマッチし、かつ、条件式を満たす場合に実行される文
//default:
//    制御式がいずれのパターンにもマッチしなかった場合に実行される文
//}

let optionalAA: Int? = 1

switch optionalAA {
case .some(let a) where a > 10:
    print("10より大きい値\(a)が存在します")
default:
    print("値が存在しない、もしくは10以下の値です。")
}


// ラベル

let value1 = 0 as Any

outerSwitch: switch value1 {
case let int as Int:
    let description: String
    switch int {
    case 1,3,5,7,9:
        description = "奇数"
    case 2,4,6,8,10:
    description = "偶数"
    default:
        print("対象外の値です")
        break outerSwitch
    }
    print("値は\(description)です")
default:
    print("対象外の型の値です")
}

// 5.4 遅延実行

var count = 0

func someFunction1() -> Int {
    defer {
        count += 1
    }
    return count
}

someFunction1()
count

// 5.5 パターンマッチ

let integer = 9

switch integer {
case 6:
    print("match:6")
case 5...10:
    print("match:5...10")
default:
    print("default")
}

let value3 = 3

switch value3 {
case let matchedValue:
    print(matchedValue)
}

// オプショナルパターン

let optionalBB = Optional(4)
switch optionalBB {
case let a?:
    print(a)
default:
    print("nil")
}

// is演算子による型キャスティングパターン
let any1: Any = 1

switch any1 {
case is String:
    print("match: String")
case is Int:
    print("match: Int")
default:
    print("default")
}


//: [Next](@next)
