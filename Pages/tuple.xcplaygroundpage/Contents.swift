//: [Previous](@previous)

import Foundation


var greeting:(String, String) = ("Hello", "こんにちは")
var guest:(String, String, Int)
guest = ("直鳥", "なおとり", 24)
var point:(Double, Double, Double)
point = (23.1, 24.0, 13.8)

let (name, _, age) = guest
let user = name + "さん" + "\(age)歳"

var user1 = (name:"鈴木", point:23)
user1.point += 30
print(user1)


let numList = [4, 8, 16, 23, 42]
var sum = 0
for num in numList {
    sum += num
}

print("合計\(sum)")

for x in 0 ..< 360 * 2 {
    let radian = Double(x) * Double.pi / 180
    let y = sin(radian)
    print(x,y)

}



//: [Next](@next)
