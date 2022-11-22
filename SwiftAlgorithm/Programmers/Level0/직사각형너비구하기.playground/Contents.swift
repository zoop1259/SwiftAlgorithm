import UIKit

let dots = [[1, 1], [2, 1], [2, 2], [1, 2]]

var arr = [Int]()

//arr.append(contentsOf: [1,1]) //2차원배열의 요소를 집어넣으러면 이런식으로 사용해봐야할거같다.

for i in 0..<dots.count {
    
    let v = dots[i]
    print(v)
    
    arr.append(contentsOf: dots[i])
    
}

print(arr)

var v = [Int]()
var h = [Int]()

//v.append(arr[0])
for i in 0..<arr.count {
    
    if i % 2 == 0 {
        h.append(arr[i])
    } else if i % 2 == 1 {
        v.append(arr[i])
    }
    
}

print(v)
print(h)


//솔루션
func solution(_ dots:[[Int]]) -> Int {
    let dots = dots.sorted(by: { ($0[0], $0[1]) < ($1[0], $1[1]) })
    return (dots.last![0] - dots.first![0]) * (dots.last![1] - dots.first![1])
}

let dotss = dots.sorted(by: { ($0[0], $0[1]) < ($1[0], $1[1]) })
print(dotss)
