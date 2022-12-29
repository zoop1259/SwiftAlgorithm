import UIKit

func solution(_ n:Int) -> Int
{
    var telp = n
    var count = 0
    
    while telp != 0 {
        
        if telp % 2 == 0 {
            telp = telp / 2
        } else {
            count += 1
            telp = telp / 2
        }
    }
    return count
}

solution(5000)

/*
 
 count 1 증가시키고
 1칸간다.
 그리고 2배만큼 간다 3 9 27
 
 */
