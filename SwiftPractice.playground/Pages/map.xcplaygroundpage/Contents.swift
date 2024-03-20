
import Foundation

// .map

let digits = (0..<10).map(String.init)
print(digits)
// ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

let digits2 = [1,3,6,8,12,6].map(String.init)
print(digits2)
// ["1", "3", "6", "8", "12", "6"]

let digits3 = ["일", "1", "2", "오늘", "38"]
let compact = digits3.compactMap { Int($0) }
print(compact)


func solution(_ n:Int) -> String {
    let num = String(n)
    return num
}
