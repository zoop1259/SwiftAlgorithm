import UIKit

//let food = [1,3,4,6]
//let food = [1, 7, 1, 2]
let food = [1, 1, 2, 3]
//food[0]은 물이고 무조건 1이다.
var arr = [Int]()

//food의 1,2,3번은 순서대로 먹어야 하며 홀수개수는 2로 나누기 떄문에 짝수개수로 바꿔주는게 좋을거같다.
//예를들어 위에선 food[1]이 3이기 떄문에 1이 버려진다. 그래서 1개씩 나눠먹는다.
for i in 1..<food.count {
    arr.append(food[i] / 2)
}
print(arr)

var str = ""

for i in 0..<arr.count {
    if arr[i] >= 1 {
        for _ in 1...arr[i] {
            str += String(i + 1)
        }
    }
}
print(str)

str = str + "0" + str.reversed()

print(str)

//repeating사용한 답..
func solution(_ food:[Int]) -> String {
    var result = ""
    for i in food.indices {
        result += String(repeating: String(i), count: food[i] / 2)
    }
    return result + "0" + result.reversed()
}
