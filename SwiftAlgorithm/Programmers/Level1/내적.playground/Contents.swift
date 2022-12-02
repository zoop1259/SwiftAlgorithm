import UIKit

let a = [1,2,3,4]
let b = [-3,-1,0,2]
var sum = 0

for i in 0..<a.count {
    
    sum += a[i] * b[i]
    
}

print(sum)

//한줄코딩
//return zip(a, b).map(*).reduce(0, +)
