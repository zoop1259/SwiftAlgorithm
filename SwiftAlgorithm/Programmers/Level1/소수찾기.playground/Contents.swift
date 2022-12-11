import UIKit

//내가 알고있는 알고리즘 지식을 기반으로...
let n = 50
var arr = [Int](0...n) //구하고자하는 값까지 배열 생성.
arr[1] = 0 //1은 소수가 아니므로 그냥 0으로 채워줌.
for i in 2...n { //2부터 계산시작.
    if arr[i] == 0 { //앞에서 지워졌다면 넘어감 시간복잡도에서 유리.
        continue
    }
    for j in stride(from: i+i, through: n, by: i) { //i의 배수만큼 0으로 만들어줌.
        print(j) //4 6 8 10 , 6 9 10
        arr[j] = 0
    }
}
//0을 포함한 출력
print(arr)
//2부터 시작하여 배열에서 지워진 숫자를 제외하고 모두 출력
print(arr.filter{ $0 != 0 })


//소수의 '개수'를 찾을 떄 좋은 에라토스테네스의 체
var num = 100
var numArray = [Int](repeating: 0, count: num + 1)
print(numArray.count)

for i in 2...num {
    numArray[i] = i
}
print(numArray)
for i in 2...num {
    if numArray[i] == 0 {
        continue
    }
    for j in stride(from: i+i, through: num, by: i) {
        numArray[j] = 0
    }
}
//print(numArray)
print(numArray.filter{ $0 != 0 })

