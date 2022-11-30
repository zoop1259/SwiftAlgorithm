import UIKit

let lines = [[0, 2], [-3, -1], [-2, 1]]
//let lines = [[0, 1], [2, 5], [3, 9]]
//let lines = [[-1, 1], [1, 3], [3, 9]]
//let lines = [[0, 5], [3, 9], [1, 10]]
//let lines = [[1,3],[2,4],[2,5]]
//let lines = [[-3,0],[-1,1],[-4,-2]]

var a = [Int]()
var b = [Int]()
var c = [Int]()

var ab = [Int]()
var bc = [Int]()
var ac = [Int]()

for i in lines[0][0]...lines[0][1] {
    a.append(i)
}

for i in lines[1][0]...lines[1][1] {
    b.append(i)
}

for i in lines[2][0]...lines[2][1] {
    c.append(i)
}

for j in a {
    if b.contains(j) {
        ab.append(j)
    }
}
for j in b {
    if c.contains(j) {
        bc.append(j)
    }
}
for j in a {
    if c.contains(j) {
        ac.append(j)
    }
}

print(a,b,c)
print(ab)
print(bc)
print(ac)

var arr = [Int]()

if ab.count >= 2 {
    for i in ab {
        if arr.contains(i) == false {
            arr.append(i)
        }
    }
}
if bc.count >= 2 {
    for i in bc {
        if arr.contains(i) == false {
            arr.append(i)
        }
    }
}
if ac.count >= 2 {
    for i in ac {
        if arr.contains(i) == false {
            arr.append(i)
        }
    }
}



/*
arr.sort()
print(arr)
var count = 0
var sand = 0

if arr.count >= 1 {
    for i in 0..<arr.count - 1 {
        if arr[i].distance(to: arr[i + 1]) > 1 {
            count -= 1
        } else {
            count += 1
        }
    }
}

print(count)

 [[1,3],[2,4],[3,5]] 질문입니다.
 123
   234
     345
*/

