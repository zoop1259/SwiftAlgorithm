import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    guard num1 <= 100 || num1 > 0 else { return -9999 }
    guard num2 <= 100 || num2 > 0 else { return -9999 }
    
    
    return num1 / num2
}
