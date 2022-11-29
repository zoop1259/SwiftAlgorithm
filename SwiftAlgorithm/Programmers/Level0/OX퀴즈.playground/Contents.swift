import UIKit

//let quiz = ["3 - 4 = -3", "5 + 6 = 11"]
//let quiz = ["19 - 6 = 13", "5 + 66 = 71", "5 - 15 = 63", "3 - 1 = 2"]
let quiz = ["0 + -0 = -0"]
// 3 -4 로 만들어서 reduce시키자.
//그리고 우측과 같으면 O

var arr = [String]()
for i in quiz {
    var comp = i.components(separatedBy: " ")

    var num = 0
    var ox = 0
    print(comp)
    
    //이방식으로 하면 1 + 1 + 1 + 1 = 1 이런식도 계산가능하겠지.
    for j in 0..<comp.count {
        if comp[j] == "-" {
            num += Int(comp[j-1])! - Int(comp[j+1])!
        } else if comp[j] == "+" {
            num += Int(comp[j-1])! + Int(comp[j+1])!
        } else if comp[j] == "=" {
            ox += Int(comp[j+1])!
        }
    }
    print(num)
    if num == ox {
        //print("O")
        arr.append("O")
    } else {
        //print("X")
        arr.append("X")
    }

}
print(arr)


/*
 var greeting = "aAb1B2cC34oOp"
 var numStr = ""

 for i in greeting {
     
     if i.isNumber == true {
         numStr.append(i)
     } else {
         numStr.append(" ")
     }
 }

 //var numArr = numStr.split(separator: " ")
 var numArr = numStr.components(separatedBy: " ")
 print(numArr)

 let intArr = numArr.compactMap { Int($0) }
 print(intArr)
 */
