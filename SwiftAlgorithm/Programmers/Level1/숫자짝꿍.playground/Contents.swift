import UIKit

let X = "100"
let Y = "123450"

var x = [String](repeating: "", count: 10)
var y = [String](repeating: "", count: 10)

for i in X {
    if i == "0" {
        x[9] += "0"
    } else if i == "1" {
        x[8] += "1"
    } else if i == "2" {
        x[7] += "2"
    } else if i == "3" {
        x[6] += "3"
    } else if i == "4" {
        x[5] += "4"
    } else if i == "5" {
        x[4] += "5"
    } else if i == "6" {
        x[3] += "6"
    } else if i == "7" {
        x[2] += "7"
    } else if i == "8" {
        x[1] += "8"
    } else {
        x[0] += "9"
    }
}
print(x)

for i in Y {
    if i == "0" {
        y[9] += "0"
    } else if i == "1" {
        y[8] += "1"
    } else if i == "2" {
        y[7] += "2"
    } else if i == "3" {
        y[6] += "3"
    } else if i == "4" {
        y[5] += "4"
    } else if i == "5" {
        y[4] += "5"
    } else if i == "6" {
        y[3] += "6"
    } else if i == "7" {
        y[2] += "7"
    } else if i == "8" {
        y[1] += "8"
    } else {
        y[0] += "9"
    }
}
print(y)
/*
 //노다가 줄이는 방법
 for i in X{
      x[Int(String(i))!] += 1
  }

  for i in Y{
      y[Int(String(i))!] += 1
  }
 */

var xy = [String](repeating: "", count: 10)

for i in 0..<x.count {
    if x[i].isEmpty {
    } else if y[i].isEmpty {
    } else if x[i].count <= y[i].count {
        xy[i] = x[i]
    } else if x[i].count >= y[i].count {
        xy[i] = y[i]
    }
}
print(xy)

var reduceXY = xy.reduce("", +)
print(reduceXY)

if reduceXY.isEmpty {
    print("비었음")
} else if reduceXY.filter({ $0 != "0" }).isEmpty {
    print("0만있음")
} else {
    print(reduceXY)
}





/* 비효율적.
var x = X.map{String($0)}
var y = Y.map{String($0)}

var yy = y

var res = [String]()

for i in 0..<x.count {
    
    if y.contains(x[i]) {
        //print(x[i]) //100
        if yy.contains(x[i]) {
            print(x[i]) //초기 100
                
            res.append(x[i])
            if let index = yy.firstIndex(of: x[i]) {
                yy.remove(at: index)
            }
            
        }
    }
    
}

if res.isEmpty {
    print("비어있다.")
}

let res0 = res.filter { $0 != "0" }

if res0.isEmpty {
    print("0만있다.")
}

print(yy)
print(res.sorted(by: >).reduce("", +))
*/
