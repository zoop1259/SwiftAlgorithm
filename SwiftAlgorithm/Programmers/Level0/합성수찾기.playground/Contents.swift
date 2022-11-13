import UIKit

var count = 0
var re = [Int]()
let n = 15

for i in 1...n {
    
    var j = 1
    while j <= i {
        print("i: \(i) , j: \(j)")
        
        if i % j == 0 {
            print(j)
            print("계산: \(i % j)")
            count += 1
            print("카운트 연산: \(count)")
            if count >= 3 {
                
                if re.contains(i) == false {
                    re.append(i)
                }

                count = 0
            }
            
        }
        j += 1
    }
    count = 0

}
print(re)

//10부터 3까지 -1씩
//for i in stride(from: n, to: 3, by: -1) {
//    print("i: \(i)")
//    //4
//    for j in 1...i  {
//        print("j: \(j)")
//        //print("n: \(n)")
//        if i % j == 0 {
//            print(j)
//        }
//    }
//
//}

print(re)
//var i = 0
//while i <= n {
//    i += 1
//    if i % n == 0 {
//        let i2 = i / 2
//
//        if i2 % i == 0 {
//            count += 1
//        }
//    }
//}
//print(re)
//print(count)

//한줄코딩..
func solution(_ n: Int) -> Int { (1...n).filter { i in (1...i).filter { i % $0 == 0 }.count > 2 }.count }
