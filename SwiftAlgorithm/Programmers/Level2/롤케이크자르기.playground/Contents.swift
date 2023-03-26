import UIKit

/*
func solution(_ topping:[Int]) -> Int {
    var res = 0
    
    var mid = topping.count / 2
    var left = topping[0..<mid]
    var right = topping[mid...topping.count - 1]
    
    if Set(left).count == Set(right).count {
        res += 1
    }
    
    print("left: \(left), right: \(right)")
    
    var condition = true
    while condition {
        mid -= 1
        let l = topping[0..<mid]
        let r = topping[mid...topping.count - 1]
        
        print(l, r)
        print(Set(l), Set(r))
        
        if Set(l).count == Set(r).count {
            res += 1
        }
        
        if mid == 0 {
            condition = false
        }
        
    }
    
    condition = true
    mid = topping.count / 2
    
    while condition {
        mid += 1
        let l = topping[0..<mid]
        let r = topping[mid...topping.count - 1]
        
        if Set(l).count == Set(r).count {
            res += 1
        }
        
        if mid == topping.count - 1 {
            condition = false
        }
    }

    return res
}
 */

func solution(_ topping:[Int]) -> Int {
 
    
    
    return 0
}

solution([1, 2, 1, 3, 1, 4, 1, 2])
