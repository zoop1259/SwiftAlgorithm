import UIKit

let n = 78
let n2 = String(n, radix: 2).filter { $0 == "1" }
print(n2)

var nn = n + 1

while true {
    if String(nn, radix: 2).filter({ $0 == "1"}).count == n2.count {
        break
    }
    nn += 1
}

print(nn)




/*
 4번효율성에서 밀림.
var nn = n + 1
var nn2 = String(nn, radix: 2).filter { $0 == "1" }
print(nn2)

while n2.count != nn2.count {
    nn += 1
    nn2 = String(nn, radix: 2).filter { $0 == "1"}
}

print(nn)
*/
