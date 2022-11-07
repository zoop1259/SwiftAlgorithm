import UIKit

//프로그래머스 컴파일러는 안되나봄 ㅠㅠ
let my_string = "1a2b3c4d123"
let filters = my_string.filter { $0.isNumber }
let intFilter = Int(filters) ?? 0
print(intFilter)

var ans = 0
for i in String(intFilter) {
    ans += Int(String(i))!
}

var ans2 = 0
for i in filters {
    ans2 += Int(String(i))!
}

print(ans2)

//let a = [my_string]
//let aa: [Int] = a.compactMap { int in
//    Int(int)
//}

//어렵게 푸는방법.
var mystring = [String]()

for i in my_string {
    mystring.append(String(i))
}

print(mystring)

let ref = mystring.compactMap { int in
    Int(int)
}

print(ref)

let stringRef = ref.map { String($0) }
print(stringRef)

let joinedRef = stringRef.joined(separator: "")
print(joinedRef)

let intRef = Int(joinedRef) ?? 0


//고차함수로.. 이렇게..하는군...
func solution(_ my_string:String) -> Int {
     return my_string.compactMap{Int(String($0))}.reduce(0,+)
}
