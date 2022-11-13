import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    let count = numbers.count
    var returnArr = [Int]()
    
    if direction == "right" {
        returnArr.append(numbers[numbers.count - 1])
        for i in 0...numbers.count - 2 {
            returnArr.append(numbers[i])
        }
    } else if direction == "left" {
        for i in 0...numbers.count - 2 {
            returnArr.append(numbers[i+1])
        }
        returnArr.append(numbers[0])
    }
    return returnArr
}

/*
 import Foundation

 func solution(_ numbers:[Int], _ direction:String) -> [Int] {
     var numbers = numbers
     if direction == "right" {
         let a = numbers.removeLast()
         return [a] + numbers
     } else {
         let a = numbers.removeFirst()
         return numbers + [a]
     }
 }
 */
