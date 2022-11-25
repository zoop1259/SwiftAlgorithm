import UIKit

let id_pw = ["meosseugi", "1234"]
let db = [["rardss", "123"], ["yyoom", "1234"], ["meosseugi", "1234"]]
print(db.count)
var check = [String]()

for i in 0..<db.count {
    
    if db[i].contains(id_pw[0]) {
        if db[i].contains(id_pw[1]) {
            check.append("login")
        } else {
            check.append("wrong pw")
        }
    } else {
        check.append("fail")
    }
}

if check.contains("login") {
    print("login")
} else if check.contains("wrong pw") {
    print("wrong pw")
} else {
    print("fail")
}
