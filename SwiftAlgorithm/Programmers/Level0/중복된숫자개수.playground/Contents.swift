import Cocoa
import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var count = 0
    
    for index in 0..<array.count {
        if array[index] == n {
            count += 1
        }
    }
    
    return count
}

func solution1(_ array:[Int], _ n:Int) -> Int { array.filter {$0 == n}.count }
