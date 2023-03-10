//: [Previous](@previous)

import Foundation
import UIKit
// 6.2 関数
// 定義方法

//func 関数名(引数名1: 型, 引数名2: 型...) -> 戻り値の型 {
//    関数呼び出し時に実行される文
//    必要に応じてreturn文で戻り値を返却する。
//}

func doubleFunc(_ x: Int) -> Int {
    return x * 2
}
doubleFunc(2)

// 外部引数を省略したい場合は、_を外部引数名に使用する。
func greet(_ user: String = "Anonymous") {
    print("Hello, \(user)!")
}

greet("aa")

// 可変長引数
func print(strings: String...) {
    if strings.count == 0 {
        return
    }

    print("first: \(strings[0])")

    for string in strings {
        print("element: \(string)")
    }
}

print(strings: "abc", "def", "ghi")

// 6.3 クロージャ

// クロージャの定義
//{ (引数名1: 型, 引数名2: 型...) -> 戻り値の型 in
//    クロージャの実行時に実行される文
//    必要に応じてreturn文で戻り値を返却する
//}
// 引数×2
let double = { (x: Int) -> Int in
    return x * 2
}
double(2)

// 足し算
let sum = { (x, y) -> Int in x + y}
sum(2,3)

var closure: (String) -> Int

// 引数と戻り値の方を明示した場合
closure = { (string: String) -> Int in
    return string.count
}

closure("abc")


closure = { string in
    return string.count * 2
}

closure("abc")


// -------------クロージャ練習---------------------
// Intからstringへ変換
var convertIntToString = { (int: Int) -> String in
    return String(int)
}
convertIntToString(2)


// StringからIntへ変換
var convertStringToInt = {(string: String) -> Int in
    return Int(string) ?? 0
}

convertStringToInt("2")
convertStringToInt("abc")  // Int(string)で数字にできないため、?? 0 でアンラップしている。

// -----------------------------------------------

// 型推論
// 定数のlengthOfStringの型は(String) -> Int
let lengthOfString = {(string: String) -> Int in
    return string.count
}

lengthOfString("I contain 23 characters")



func plus(exec: (Int, Int, Int) -> Int) {
    exec(1, 2, 3)
}

// 使用箇所
plus() { _, count2, count3 in
    print(count2 + count3)
    return count2 + count3
}


private func fetchPokemonData(completion: @escaping (Result<[Data], Error>) -> Void) {
    var dataArray: [Data] = []
    let urls = getURLs()
    urls.forEach {
        guard let url = $0 else { return }
        let task = URLSession.shared.dataTask(with: url, completionHandler: { data, _, error in
            if let error = error {
                completion(.failure(error))
            }
            if let data = data {
                dataArray.append(data)
            }
            if urls.count == dataArray.count {
                completion(.success(dataArray))
            }
        })
        task.resume()
    }
}


//: [Next](@next)
