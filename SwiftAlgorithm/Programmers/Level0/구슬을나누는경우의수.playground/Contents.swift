import UIKit

let balls = 5
let share = 3

// n! / (n-m)! * m!

var b = 1.0
var s = 1.0
var subs = balls - share
var sub = 1.0
var res = 0.0

if subs <= 1 {
    print(1)
}



for i in 1...balls {
    b = b * Double(i)
    print(b)
}

for i in 1...share {
    s = s * Double(i)
}

for i in 1...subs {
    sub = sub * Double(i)
}


res = b / (sub * s)

//왜 논리적 오류가 발생하는가. 문제 오류인지 모르겠다. //28번이 안된다.
import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
var b = 1.0
var s = 1.0
var subs = Double(balls - share)
var sub = 1.0

if subs < 1 {
    return 1
} else if share == 0 {
    return 0
} else if balls == share {
    return 1
} else if balls == 1 {
    return 1
} else if balls == 0 {
    return 0
}

for i in 1...balls {
    b = b * Double(i)
}

for i in 1...share {
    s = s * Double(i)
}

for i in 1...balls - share {
    sub = sub * Double(i)
}
    
    return Int(round(b / (sub * s)))
}

