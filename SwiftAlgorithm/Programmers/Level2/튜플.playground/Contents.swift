import UIKit
//집합에서 "가장 빈번히 나온 숫자" 순으로 튜플이 구성됩니다
print(123)
func solution(_ s:String) -> [Int] {
    var arr = [Int]()
    let tu = s.components(separatedBy: ",").map { $0 }
    print(tu)

    for str in tu {
        var strs = ""
        for cha in str {
            if cha.isNumber {
                strs += String(cha)
            }
        }
        arr.append(Int(strs)!)
    }

    var countDictionary = [Int: Int]()
    for element in arr {
        countDictionary[element] = (countDictionary[element] ?? 0) + 1
    }
    print(countDictionary)
    let sortedArr = countDictionary.sorted { $0.value > $1.value }.map { $0.key }
    
    return sortedArr
}

//좀 더 간단하게 할 수 있다.
func solution2(_ s:String) -> [Int] {
    var components = [Int: Int]()

    s.split { !$0.isNumber }.map { Int(String($0))! }.forEach {
        components[$0, default: 0] += 1
    }

    return components.sorted { $0.value > $1.value }.map { $0.key }
}

//solution("{{2},{2,1},{2,1,3},{2,1,3,4}}")
solution("{{20,111},{111}}")
