import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    if d.reduce(0, +) == budget {
        return d.count
    }
    
    var dd = d.sorted(by: <)
    
var answer = 0
var sum = 0

for i in dd {
    sum += i
    
    if sum <= budget {
        answer += 1
    } else {
        break
    }
}

return answer
}
