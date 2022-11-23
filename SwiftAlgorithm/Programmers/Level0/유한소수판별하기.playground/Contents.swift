import UIKit
func solution2(_ a: Int, _ b: Int) -> Int { a * 10_000_000 % b == 0 ? 1 : 2 }
print(solution2(1, 32))
//제출한답
func solution(_ a:Int, _ b:Int) -> Int {
    if b == 0 || a == 0 {
        return 2
    }
    
    if b == 2 || b == 5 {
        return 1
    }
    
    let GCD = gcd(a, b)
    var sub = b / GCD
    
    var arr = [Int]()
    
    for i in stride(from: 2, through: sub, by: 1) {
        while sub % i == 0 {
            print("\(i)")
            arr.append(i)
            sub = sub / i
        }
    }
    
    let res = arr.filter {$0 % 2 != 0 }.filter { $0 % 5 != 0}
    
    return arr.filter { $0 % 2 != 0}.filter { $0 % 5 != 0}.count == 0 ? 1 : 2
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let r = a % b
    
    if r != 0 {
        return gcd(b, r)
    } else {
        return b
    }
}

//---------------------------------------------------------------------------------------------


let a = 25
let b = 30

var B = b
//let a = 12
//let b = 21

let GCD = gcd(a, b)
var sub = b / GCD

var arr = [Int]()

for i in stride(from: 2, through: sub, by: 1) {
    while sub % i == 0 {
        print("\(i)")
        arr.append(i)
        sub = sub / i
    }
}

let res = arr.filter {$0 % 2 != 0 }.filter { $0 % 5 != 0}

print(res)




/* 뻘짓연구소
 import UIKit

 let a = 25
 let b = 30

 var B = b
 //let a = 12
 //let b = 21

 func gcd(_ a: Int, _ b: Int) -> Int {
     let r = a % b
     
     if r != 0 {
         return gcd(b, r)
     } else {
         return b
     }
 }

 let GCD = gcd(a, b)
 let sub = b / GCD

 var arr = [Int]()
 //소인수분해 2...N을 쓰면 N을 자꾸 나눠주기 때문에 N이 더 작아진다.
 //근데 stride는 그렇지 않다.

 //if GCD != 1 {
 //    if b % GCD == 0 {
 //        let a = b / GCD
 //        if a % 2 == 0 || a % 5 == 0 {
 //            print(1)
 //        }
 //    }
 //}


 //단순히 소인수분해하면 분자가 1인경우 문제가 됨.
 //for i in stride(from: 2, through: B, by: 1) {
 //    while B % i == 0 {
 //        print("\(i)")
 //        arr.append(i)
 //        B = B / i
 //    }
 //}

 for i in stride(from: 2, through: sub, by: 1) {
     while B % i == 0 {
         print("\(i)")
         arr.append(i)
         B = B / i
     }
 }

 let res = arr.filter {$0 % 2 != 0 }.filter { $0 % 5 != 0}

 print(res)

 
 ----------------0-=--=-==-=-=-=----------0-=--=-==-=-=-=----------0-=--=-==-=-=-=----------0-=--=-==-=-=-=-=-=-=-=-=-=-
 
 import Foundation

 func solution(_ a:Int, _ b:Int) -> Int {
     if b == 0 || a == 0 {
         return 2
     }
     
     if b == 2 || b == 5 {
         return 1
     }
     
     var B = b
     
     let GCD = gcd(a, b)
     
     var arr = [Int]()
     
     if GCD != 1 {
         if b % GCD == 0 {
             let a = b / GCD
             if a % 2 == 0 || a % 5 == 0 {
                 return 1
             }
         }
     }

         
     for i in stride(from: 2, through: B, by: 1) {
         while B % i == 0 {
             arr.append(i)
             B = B / i
         }
     }
         
     return arr.filter { $0 % 2 != 0}.filter { $0 % 5 != 0}.count == 0 ? 1 : 2
 }

 func gcd(_ a: Int, _ b: Int) -> Int {
     let r = a % b
       
     if r != 0 {
         return gcd(b, r)
     } else {
         return b
     }
 }
 */
