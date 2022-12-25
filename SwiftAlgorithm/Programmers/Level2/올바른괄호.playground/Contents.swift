import UIKit

func solution(_ s:String) -> Bool {
    var count = 0
    for i in s {
        count += i == "(" ? 1 : -1
        if (count < 0) { // )이게 먼저 하나 더 들어와버리면 바로 false
            return false
        }
    }
    return count == 0
}


solution("()())(()")
//solution("()()")
    
/*
답은 맞지만 효율성이 떨어짐.
 func solution(_ s:String) -> Bool
 {
     if s.prefix(1) == ")" {
         return false
     }
     let ss = s.map { String($0) }
     var arr = [String]()
     
     for i in 0..<ss.count {
         if arr.first == ")" {
             return false
         }
         
         if ss[i] == ")" {
             if arr.last == "(" {
                 arr.removeLast()
                 if arr.last == ")" {
                     return false
                 }
             } else {
                 arr.append(ss[i])
             }
         } else {
             arr.append(ss[i])
         }
         print(arr)
     }
     
     print(arr.count)
     
     if arr.isEmpty {
         return true
     }
     
     return false
 }
 */

/*
 //쉽지만 "()())(()" 이것도 트루로 나옴.
func solution(_ s:String) -> Bool
{
    var a = 0
    var b = 0
    
    for i in s {
        if i == "(" {
            a += 1
        } else if i == ")" {
            b += 1
        }
    }
    
    if a == b {
        if s.prefix(1) == "(" {
            if s.suffix(1) == ")" {
                return true
            } else {
                return false
            }
        }
    }

    return false
}
*/

