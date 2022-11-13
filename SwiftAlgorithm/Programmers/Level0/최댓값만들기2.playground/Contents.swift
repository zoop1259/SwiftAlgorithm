import Foundation

func solution(_ numbers:[Int]) -> Int {
    var a = [Int]()
    var b = [Int]()
    
    var aa = 0
    var bb = 0
    
    if numbers.min()! < 0 {
        a = numbers.filter { $0 <= 0 }.sorted(by: <)
        if a.count >= 2 {
           aa = a[0] * a[1]
        } else {
        aa = a[0]
        }
    }
    
    if numbers.max()! > 0 {
        b = numbers.filter { $0 >= 0 }.sorted(by: >)
        if b.count >= 2 {
            bb = b[0] * b[1]
        } else {
        bb = b[0]
        }
    }
    if a.count == 1 && b.count == 1 {
        return aa * bb
    }
    return aa >= bb ? aa : bb
}

//쉬운풀이 max함수 이용.
func solution2(_ numbers:[Int]) -> Int {
    var numbers = numbers.sorted()

    
    
    return max(numbers[0] * numbers[1], numbers[numbers.count-1] * numbers[numbers.count - 2])
}

solution2([1,-1])

//print(max(<#T##x: Comparable##Comparable#>, <#T##y: Comparable##Comparable#>))
