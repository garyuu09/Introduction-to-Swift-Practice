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

//: [Next](@next)
