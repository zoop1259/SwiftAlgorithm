import UIKit

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let sum = brown + yellow
    var a = 0
    if brown == yellow {
        a = brown / 3
    } else {
        a = sum / 3
    }
    var b = 0
    
    while a * b != sum {
        b += 1
    }
    
    print([a,b])
    return [a,b]
}

solution(10, 2)
