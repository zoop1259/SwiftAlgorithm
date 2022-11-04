import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    
    var serviceCount = n / 10
    var discount = k - serviceCount
    
    return (n * 12000) + (discount * 2000)
}
