import UIKit

var greeting = "dfjardstddetckdaccccdegk"

var password = ""

for (idx, str) in greeting.enumerated() {
    
    if (idx + 1) % 4 == 0 {
        //print(str)
        password.append(String(str))
        print(password)
    }
    
}

print(password)

//한줄코드
func solution(_ cipher:String, _ code:Int) -> String {
    return cipher.enumerated().filter{($0.offset+1)%code == 0}.map{String($0.element)}.joined()
}

