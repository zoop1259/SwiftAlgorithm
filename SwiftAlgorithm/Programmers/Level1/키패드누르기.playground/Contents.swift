import UIKit

var key = [["1","2","3"],
           ["4","5","6"],
           ["7","8","9"], //7로 가면 left 는 [2][0]  0은 [3][1]  8은 [2][1]
           ["*","0","#"]]

//let numbers = [1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5]
let numbers = [0]

//기본값에 인덱스만을 더해서...
var left = 3 //0
var right = 5 //0

var hand = "right"
var res = ""

print(key[3][0]) //left 기본값.
print(key[3][2]) //right 기본값.


for i in numbers {
    for (idx, str) in key.enumerated() {
        for (idx2, str2) in str.enumerated() {
            
            if String(i) == str2 {
                //print("찾았다.", i, idx, idx2)
                
                var place = idx + idx2
                //print(place)
                
                var xy = [idx,idx2]
                //print(xy)
                
                if left - place < right - place {
                    res += "L"
                    left = place
                    print(left,right)
                } else if left - place > right - place {
                    res += "R"
                    right = place
                    print(left,right)
                } else if left - place == right - place {
                    if hand == "left" {
                        res += "L"
                        left = place
                    } else {
                        res += "R"
                        right = place
                    }
                }
            }
//            print(str2)
        }
    }
}
print(res)


