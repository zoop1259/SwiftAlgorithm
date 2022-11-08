import UIKit

let arr = [1,5,3,9,7]
let a = Int(ceil(Double(arr.count / 2)))
let b = Int(ceil((Double(arr.count) / 2.0)))
let sol = arr.sorted(by: >)

print(sol[a])

func solution(_ array: [Int]) -> Int { array.sorted()[array.count / 2] }
