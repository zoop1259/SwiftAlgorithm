import UIKit

let balls = 5
let share = 3

// n! / (n-m)! * m!

var b = 1
var s = 1
var subs = balls - share
var sub = 1
var res = 0

if subs <= 1 {
    print(1)
}



for i in 1...balls {
    b = b * i
    print(b)
}

for i in 1...share {
    s = s * i
}

for i in 1...subs {
    sub = sub * i
}


res = b / (sub * s)

//왜 논리적 오류가 발생하는가. 문제 오류인지 모르겠다.

