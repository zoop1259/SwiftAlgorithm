import UIKit

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let a = Int(n[0])

for i in 1...a {
    for j in 1...i {
        print("*", terminator: "")
    }
    print()
}
