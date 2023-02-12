import UIKit


// Swift実践入門 4章

// 4.2  Array<Element>型

let a = [1, 2, 3]
print(type(of: a)) // Array<Int>
print(a)

let b = ["a", "b", "c"]
print(type(of: b)) // Array<String>
print(b)

//let array: [Int] = []
//print(type(of: array)) // Array<Int>
//print(array)

// 二次元配列　配列の中の配列
let integersArrays = [[1,2,3],[4,5,6]]
print(type(of: integersArrays)) // Array<Array<Int>>
print(integersArrays)



let array = [1,2,3,4,5,6]

// forEachメソッド
var enumerated = [] as [Int]
array.forEach({ element in enumerated.append(element)})
enumerated

// filterメソッド
let filtered = array.filter({ element in element % 2 == 0}) // 2の倍数だけ絞り込む
filtered

// mapメソッド 要素を変換する

