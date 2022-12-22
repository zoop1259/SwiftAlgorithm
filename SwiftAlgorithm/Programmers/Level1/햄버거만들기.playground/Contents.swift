import UIKit

//제출한 답.
func solution(_ ingredient:[Int]) -> Int {
    var stack: [Int] = []
    var count = 0
    
    for i in ingredient {
        
        stack.append(i)
        
        if stack.count < 4 { continue }
        
        let n = stack.count
        if Array(stack[n-4..<n]) == [1, 2, 3, 1] {
            stack.removeLast(4)
            count += 1
        }
        
    }
    return count
}
solution([1, 1, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1])





//1,2,3,1
//let ingredient = [2, 1, 1, 2, 3, 1, 2, 3, 1]
//let ingredient = [1, 3, 2, 1, 2, 1, 3, 1, 2]
let ingredient = [1, 1, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1] //3나와야함
//let ingredient = [1,2,3,1]

if ingredient.count <= 3 {
    print(0)
}

//var a = ingredient
var a = ingredient.map {String($0)}.reduce("", +)

var count = 0

/*
 //시간초과
 import Foundation

 func solution(_ ingredient:[Int]) -> Int {
 if ingredient.count <= 3 {
     return 0
 }

 var a = ingredient
 var count = 0

 firstwhile: while a.count >= 4 {
     for var i in 0..<a.count - 3 {
         if a[i] == 1 {
             if a[i + 1] == 2 {
                 if a[i + 2] == 3 {
                     if a[i + 3] == 1 {
                         count += 1
                         a.removeSubrange(i...i+3)
                        i -= 3
                         
                         break
                     }
                 } else {
                     continue
                 }
             } else {
                 continue
             }
         } else {
             continue
         }
     }
     
     if count == 0 {
         break firstwhile
     }

     
     if a.count < 4 {
         break
     }
 }
     return count
 }
 
 
 
 
 //직관성 좋은 답.
 func solution(_ ingredient:[Int]) -> Int {
     var stacks: [Int] = []
     var count: Int = 0
     for ingredient in ingredient {
         stacks.append(ingredient)
         let suffix = stacks.suffix(4)
         if suffix == [1,2,3,1] {
             count += 1
             stacks.removeLast(4)
         }
     }
     return count
 }

 */
