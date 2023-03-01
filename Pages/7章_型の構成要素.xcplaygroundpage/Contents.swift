//: [Previous](@previous)

import Foundation




// 7.3 プロパティ
//struct 構造体 {
//    var プロパティ名: プロパティの型 = 式 // 再代入可能なプロパティ
//    let プロパティ名: プロパティの型 = 式 // 再代入可能なプロパティ
//}

struct SomeStruct {
    var variable = 123
    let constant = 456
}

 // プロパティにアクセスする方法
let someStruct = SomeStruct()
let a = someStruct.variable
let b = someStruct.constant

// インスタンスプロパティ 型のインスタンスに紐づくプロパティ

struct Greeting {
    var to = "Yosuke Ishikawa"
    var body = "Hello"
}

let greeting11 = Greeting()
var greeting22 = Greeting()
greeting22.to = "Yusei Nishiyama"

let to1 = greeting11.to
let to2 = greeting22.to

// スタティックプロパティ

struct GreetingStatic {
    static let signature = "Sent from iPhone"

    var to = "Yosuke Ishikawa"
    var body = "Hello"
}

func print(greeting: GreetingStatic) {
    print("to:\(greeting.to)")
    print("body: \(greeting.body)")
    print("signature: \(GreetingStatic.signature)")
}

let greeting1 = GreetingStatic()
var greeting2 = GreetingStatic()
greeting2.to = "Yusei Nishiyama"
greeting2.body = "Hi"

print(greeting: greeting1)
print("---")
print(greeting: greeting2)


struct HooStruct {
    var variable = 123
    let constant = 456
    static var staticVariable = 789
    static let staticConstant = 890
}

let hooStruct = HooStruct()
hooStruct.variable
hooStruct.constant
HooStruct.staticVariable
HooStruct.staticConstant

// プロパティオブザーバ ストアドプロパティの変更の監視
//var プロパティ名 = 初期値 {
//    willSet {
//        プロパティの変更前に実行する文
//        変更後の値には定数newValueとしてアクセスできる
//    }
//    didSet {
//        プロパティの変更後に実行する文
//    }
//}

struct WillDidStruct {
    var to = "Yosuke Ishikawa" {
        willSet {
            print("willSet: (to: \(self.to), newValue: \(newValue))")
        }
        didSet {
            print("didSet: (to: \(self.to))")
        }
    }
}
print("---------")
var willDidStruct = WillDidStruct()
willDidStruct.to = "Yusei Nishiyama"


// レイジーストアドプロパティ アクセス時まで初期化を遅延させるプロパティ

struct LazyStruct {
    var value: Int = {
        print("valueの値を生成します")
        return 1
    }()

    lazy var lazyValue : Int = {
        print("lazyValueの値を生成します")
        return 2
    }()
}

var lazyStruct = LazyStruct()
print("---")
print("LazyStructをインスタンス化しました")
print("valueの値は\(lazyStruct.value)です")
print("lazyValueの値は\(lazyStruct.lazyValue)です")



// コンピューテッドプロパティ -- 値を保持せずに算出するプロパティ

//var プロパティ名: 型名 {
//    get {
//        return文によって値を返す処理
//    }
//
//    set {
//        値を更新する処理
//        プロパティに代入された値には定数newValueとしてアクセスできる
//    }
//}

struct GetGreeting {
    var to = "Yosuke Ishikawa"
    var body: String {
        get {
            return "Hello, \(to)!"
        }
    }
}

let getGreeting = GetGreeting()
getGreeting.body


struct Temperature {
    // 摂氏温度
    var celsius: Double = 0.0

    // 華氏温度
    var fahrenheit: Double {
        get {
            return (9.0 / 5.0) * celsius + 32.0
        }

        set {
            celsius = (5.0 / 9.0) * (newValue - 32.0)
        }
    }
}

var temperature = Temperature()

//temperature.celsius =
temperature.fahrenheit = 50
temperature.celsius
temperature.fahrenheit


//セッタの省略

struct SetGreeting {
    var to = "Yosuke Ishikawa"
    var body: String {
        return "Hello, \(to)"
    }
}

var setGreeting = SetGreeting()
setGreeting.to = "Hi"

setGreeting.body

// 7.4 イニシャライザ
//init(引数) {
//    初期化処理
//}

struct HogeGreeting {
    let to: String
    var body: String {
        return "Hello, \(to)!"
    }
    init(to: String) {
        self.to = to
    }
}

let hogeGreeting = HogeGreeting(to: "hoge")
let body = hogeGreeting.body

// 失敗可能可能イニシャライザ

struct Item {
    let id: Int
    let title: String

    init?(dictionary: [String: Any]) {
        guard let id = dictionary["id"] as? Int,
              let title = dictionary["title"] as? String else {
                  // このケースではidとtitleは未初期化のままでもコンパイル可能
                  return nil
              }
        self.id = id
        self.title = title
    }
}

let dictionaries: [[String: Any]] = [
    ["id": 1, "title": "abc"],
    ["id": 2, "title": "def"],
    ["title": "ghi"], // idが欠けている辞書
    ["id": 3, "title": "jkl"],
]

for dictionary in dictionaries {
    // 失敗可能イニシャライザはItem?を返す
    if let item = Item(dictionary: dictionary) {
        print(item)
    } else {
        print("エラー: 辞書\(dictionary)からItemを生成できませんでした")
    }
}





//: [Next](@next)
