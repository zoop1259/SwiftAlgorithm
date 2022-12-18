import UIKit

func isPrime(num: Int) -> Bool {
    if (num < 4) {
        return num == 1 ? false : true
    }
    for i in 2...Int(sqrt(Double(num))) {
        if (num % i == 0) { return false }
    }
    return true
}

func solution(_ num:[Int]) -> Int {
    var prime = [Int]()
    
    for i in 0..<num.count {
        for j in i+1..<num.count {
            for k in j+1..<num.count {
                    var three = num[i] + num[j] + num[k]
                    print(three)
                if isPrime(num: three) == true {
                    prime.append(three)
                }
            }
        }
    }
    return prime.count
}
solution([1,2,3,4])
