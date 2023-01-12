import UIKit

func solution(_ s:String) -> Int {
    if s.count % 2 != 0 || s.count <= 1{
        return 0
    }
    
    var res = 0
    var ss = s
    var stack = [Character]()
    
    for _ in 0..<s.count {
        stack.removeAll()
        
        for i in ss {
            if stack.isEmpty {
                stack.append(i)
            } else {
                
                if i == ")" {
                    //print(stack)
                    if stack.last == "(" {
                        stack.removeLast()
                    } else {
                        stack.append(i)
                    }
                } else if i == "}" {
                    if stack.last == "{" {
                        stack.removeLast()
                    } else {
                        stack.append(i)
                    }
                } else if i == "]" {
                    if stack.last == "[" {
                        stack.removeLast()
                    } else {
                        stack.append(i)
                    }
                } else {
                    stack.append(i)
                }
            }
        }

        if stack.isEmpty {
            res += 1
        }

        if let before = ss.first {
            ss.append(before)
        }
        ss.removeFirst()
    }
    return res
}

//solution("[](){}")
//solution("[{]}")
solution("[)(]")

/* 이건 괄호 순서만 파악. 올바른 괄호인지를 파악하지 못한다.
 func solution(_ s:String) -> Int {
     var ss = s
     let count = s.count
     var res = 0
     
     for _ in 0..<count - 1 {
         print(ss)
         var sma = 0
         var mid = 0
         var lar = 0
         
         for i in ss {
             if i == ")" {
                 sma -= 1
                 if sma < 0 {
                     sma -= 1
                 }
             } else if i == "(" {
                 sma += 1
             }
             
             if i == "}" {
                 mid -= 1
                 if mid < 0 {
                     mid -= 1
                 }
             } else if i == "{" {
                 mid += 1
             }
             
             if i == "]" {
                 lar -= 1
                 if lar < 0 {
                     lar -= 1
                 }
             } else if i == "[" {
                 lar += 1
             }
         }
         if sma == 0 && mid == 0 && lar == 0 {
             res += 1
         }
         if let before = ss.first {
             ss.append(before)
         }
         ss.removeFirst()
     }
     return res
 }
 */
