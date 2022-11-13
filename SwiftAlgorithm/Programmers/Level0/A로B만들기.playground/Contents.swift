import Foundation

func solution(_ before:String, _ after:String) -> Int {
    return before.sorted(by: >) == after.sorted(by: >) ? 1 : 0
}

/*
let before = "olleh"
let after = "hello"

var a = before.map { String($0) }
var b = after.map { String($0) }
   
var aa = before.map { String($0) }
var bb = after.map { String($0) }
//for i in a {
//    a.remove(at: b)
//    b.remove(at: b)
//}

//for (idx, str) in a.enumerated() {
//    if a.contains(str) == true && b.contains(str) {
//        aa.remove(at: idx)
//        bb.remove(at: idx)
//        print(str)
//    }
//}

print(before.sorted(by: >))

if a.sorted(by: >) == b.sorted(by: >) {
    print("같음")
}


//for (index,value) in array.enumerated(){
//    if value == "Banana"{
//    array.remove(at: index)
//}

print(a)
if a.count == 0 {
    print("맞음")
}
*/
