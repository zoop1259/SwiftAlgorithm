import UIKit

//let array = [3, 10, 28]
//let array = [10, 11, 12]
//let n = 13
//let n = 20
let array = [1 , -1]
let n = 1

let b = array.sorted(by: <)
let a = b.map { abs($0 - n) }
let min = a.min()!
print(a)
print(min)
let idx = a.firstIndex(of: min)!
print(idx)

print(b[idx])
