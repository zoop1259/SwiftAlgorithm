import UIKit

func solution(_ hp: Int) -> Int { hp / 5 + hp % 5 / 3 + hp % 5 % 3 }

func solution2(_ hp:Int) -> Int {

    var count = 0
    var left5 = 0
    var left3 = 0
    
    count += hp / 5
    left5 = hp % 5
    
    count += left5 / 3
    left3 = left5 % 3
    
    count += left3 / 1
    
    
    return count
}
