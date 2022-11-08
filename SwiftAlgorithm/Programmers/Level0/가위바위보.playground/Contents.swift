import UIKit

let rsp = "205"

//for i in rsp {
//    if i == 2 ?
//}

let a = rsp.map { $0 == "2" ? "0" : $0 == "0" ? "5" : "2"}.joined()
print(a)
//print(rsp.filter { $0 == "2" ? "5" : "0" } )


func solution(_ rsp:String) -> String {
    return rsp.map { $0 == "2" ? "0" : $0 == "0" ? "5" : "2"}.joined()
}
