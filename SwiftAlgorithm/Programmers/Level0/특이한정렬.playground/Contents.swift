import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    var sortList = numlist.sorted(by: >)
    var arr = [[Int]]()
    
    for (idx, num) in sortList.enumerated() {
            arr.append([idx,num,abs(num.distance(to: n))])
    }
    
    let sortArr = arr.sorted(by: {$0[2] < $1[2]})
    
    var numList = [Int]()

    for i in sortArr {
        numList.append(i[1])
    }
    
    return numList
}

//한줄코딩
func solution2(_ numlist:[Int], _ n:Int) -> [Int] { numlist.sorted(by: >).sorted { abs($0 - n) < abs($1 - n) } }
