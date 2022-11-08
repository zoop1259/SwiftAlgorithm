import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    var arr = [Int]()
    
    for i in numlist {
        if i % n == 0 {
            arr.append(i)
        }
    }
    
    return arr
}

func solution2(_ n: Int, _ numList: [Int]) -> [Int] { numList.filter { $0 % n == 0 } }
