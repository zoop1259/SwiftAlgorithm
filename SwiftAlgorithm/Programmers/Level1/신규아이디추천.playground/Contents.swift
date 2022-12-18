//제출한 답
import Foundation

func solution(_ new_id:String) -> String {
    //소문자.
    var str = new_id.lowercased()

    var a: String = ""
    for i in str {
        //문자만           //숫자만       // - _ ' 만
        if i.isLetter || i.isNumber || i == "-" || i == "_" || i == "." {
            a.append(i)
        }
    }


//.중복 제거
while a.contains("..") {
    a = a.replacingOccurrences(of: "..", with: ".")
}
print(a)

//처음 . 제거
while a.hasPrefix(".") {
    a.removeFirst()
}

//마지막 . 제거
while a.hasSuffix(".") {
    a.removeLast()
}

//빈문자열이면
if a == "" {
    a = "a"
}

//16자 이상이면 삭제
if a.count >= 16 {
    let idx = a.index(a.startIndex, offsetBy: 15)
    a = String(a[a.startIndex..<idx])
    //다시 . 제거
    if a.hasSuffix(".") {
       a.removeLast()
    }
}



//3자 미만이면 마지막 문자 이어서 붙이기
if a.count <= 2 {
    while a.count != 3 {
//        a = a + String(a.last!)
//        a = a + String(a.last ?? Character(""))
        var lastIdx = a[a.index(before: a.endIndex)]
        a = a + String(lastIdx)
    }
}
    return a
}

import UIKit

let new_id = "...@@--__''aSd121"
//let new_id = "=.="

//소문자 변환 및 정규화. -_. 제외
//    .map { $0.replacingOccurrences(of: "[~!@#$%^&*()=+[{]}:?,<>/]", with: "", options: .regularExpression) }.joined()

var a = new_id.lowercased()
a = a.replacingOccurrences(of: "['\"~!@#$%^&*()=+[{]}:?,<>/]", with: "", options: .regularExpression)

print(a)
//var str = new_id.lowercased()
//var a: String = ""
//for i in str {
//    if i.isLetter || i.isNumber || i == "-" || i == "_" || i == "." {
//        a.append(i)
//    }
//}

//.중복 제거
while a.contains("..") {
    a = a.replacingOccurrences(of: "..", with: ".")
}
print(a)

//처음 . 제거
while a.hasPrefix(".") {
    a.removeFirst()
}

//마지막 . 제거
while a.hasSuffix(".") {
    a.removeLast()
}

//빈문자열이면
if a == "" {
    a = "a"
}

//16자 이상이면 삭제
if a.count >= 16 {
    let idx = a.index(a.startIndex, offsetBy: 15)
    a = String(a[a.startIndex..<idx])
}

//다시 . 제거
if a.hasSuffix(".") {
    a.removeLast()
}

//3자 미만이면 마지막 문자 이어서 붙이기
if a.count <= 2 {
    while a.count != 3 {
//        a = a + String(a.last!)
//        a = a + String(a.last ?? Character(""))
        var lastIdx = a[a.index(before: a.endIndex)]
        a = a + String(lastIdx)
    }
}

print(a)
/*
//1.소문자로 변환.
func solution(_ new_id:String) -> String {
    var answer = step1(id: new_id)
    answer = new_id.lowercased()
    
    return answer
}

print(solution("...!@BaT#*..y.abcd...efghi jklm."))

//2.특문제거
func step1(id: String) -> String {
//    return id.replacingOccurrences(of: "[~!@#$%^&*()=+[{]}:?,<>/]", with: "", options: .regularExpression)
    return step2(id.replacingOccurrences(of: "[~!@#$%^&*()=+[{]}:?,<>/]", with: "", options: .regularExpression))

}
func step2(_ id: String) -> String {
    
    var a = id.map { $0 }
    print(a)
    
    for i in 0..<a.count - 1 {
        if a[i] == "." {
            if a[i + 1] == "." {
                a.remove(at: i + 1)
            }
        }
    }
    return String(a)
}
*/
 
/*
//2.특수문자 제거.
var b = a.replacingOccurrences(of: "[~!@#$%^&*()=+[{]}:?,<>/]", with: "", options: .regularExpression)
print(b)

//3.중복 .. 제거
let c = b.replacingOccurrences(of: "...", with: ".")
var d = c.replacingOccurrences(of: "..", with: ".")
print(d)

//5.공백 제거
for i in d {
    if i == " " {
        if let idx = d.firstIndex(of: i) {
            d.remove(at: idx)
        }
    }
}
print(d)

if d.count == 1 {
    if d == "." {
        //5-1. 빈 문자열이면 a로 3개 채우기.
        //if d.isEmpty {
            d = "aaa"
        //}
    }
}

//7.15자 이상이면 캔슬.
if d.count < 15 {
    print(d)
} else {
    let g = d.index(d.startIndex, offsetBy: 15)
    d = String(d[d.startIndex..<g])
//    print(String(range))
}

//6. 마지막 문자열 가져와서 3자 이하일시 붙여넣기.
var e = d[d.index(before: d.endIndex)]
if d.count <= 2 {
    while d.count < 3 {
        d += String(e)
    }
}
print(d)

//4.시작이 .이면 제거
if d[d.startIndex] == "." {
    d.remove(at: d.startIndex)
}
print(d)
//이 방식 자체가 out of bounds를 먹는다.
//print(a[a.endIndex])
//while a[a.endIndex] == "." { //그래서 이 와일문을 사용할 수 없는 것.
//마지막이 .이면 제거
if d[d.index(before: d.endIndex)] == "." {
//    s[s.index(before: s.endIndex)]
    d.removeLast()
}

print(d)
*/


/*
 map을 통해 중복을 제거하는데 모조리 제거해버리는 코드
 let input = "Hello, world!"
 let result = input.map { char in
     if char == "o" {
         return ""
     }
     return String(char)
 }.joined()
 print(result)  // Output: "Hell, w rld!"

 이건 하나만 남긱 모조리 제거...
 let input = "Hello... wo..rld!"
 var uniqueCharacters = [String]()
 let result = input.map { char in
     if char == "." {
         if !uniqueCharacters.contains(String(char)) {
             uniqueCharacters.append(String(char))
             return String(char)
         }
         return ""
     }
     return String(char)
 }.joined()
 print(result)  // Output: "Hell, w rld!"
 */
