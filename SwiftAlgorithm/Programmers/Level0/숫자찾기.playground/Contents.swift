import UIKit

let a = 29183
let b = 1

//b가 어디있는 찾아보기.
let c = String(a).map {$0}
var arr = [String]()

for i in c {
    arr.append(String(i))
}

for (i, j) in arr.enumerated() {
    
    if j == String(b) {
        print(i)
    }
    
}

print(String(a).contains(String(b)))

//한줄
func solution(_ num: Int, _ k: Int) -> Int { Array("-\(num)").firstIndex(of: Character(String(k))) ?? -1 }

