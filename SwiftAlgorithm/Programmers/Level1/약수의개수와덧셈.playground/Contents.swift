import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var count = 0
    var sum = 0
    for i in left...right {
        count = 0
        for j in 1...i {
            if i % j == 0 {
                print(j)
                count += 1
            }
        }
        if count % 2 == 0 {
            sum += i
        } else {
            sum -= i
        }
    }
    
    return sum
}

//한줄코딩
func solution2(_ left: Int, _ right: Int) -> Int {
    return (left...right).map { i in (1...i).filter { i % $0 == 0 }.count % 2 == 0 ? i : -i }.reduce(0, +)
}
