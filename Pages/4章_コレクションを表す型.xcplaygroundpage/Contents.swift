//: [Previous](@previous)

import Foundation




// 4.6

//mapメソッド 要素を変換する
// ------------------------
let array = [1,2,3,4,5,6]
// ------------------------
let doubled = array.map({ element in element * 2})  // 配列attayの各要素を二倍
doubled


let converted = array.map({ element in String(element)}) // 配列arrayをStringへ変換
converted

// flatmapメソッド 要素をシーケンスに変換し、それを一つのシーケンスに変換する
let a = [1,4,7]
let b = a.flatMap({ value in [value, value + 1]})
print(b)

let c = a.map({ value in [value, value + 1]}) // mapメソッドでは[[Int]]型になる
print(c)


// compactMapメソッド 要素を、失敗する可能性のある処理を用いて変換する
let strings = ["abc", "123", "def", "456"]
let integers = strings.compactMap({ value in Int(value)})
integers

// reduceメソッド 要素を一つの値にまとめる
let sum = array.reduce(0, { result, element in result + element})
sum

//Collectionプロトコル サブスクリプトによる要素へのアクセス
array[3]
array.isEmpty
array.count
array.first
array.last

//: [Next](@next)
