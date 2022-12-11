import Foundation

//제출한 답.
func solution(_ s:String) -> [Int] {
    let sr = String(s.reversed())
    //let spl = sr.split(separator: "") //프로그래머스에서 이게 안됨;;
    let spl = Array(sr)
    var arr = [Int](repeating: -1, count: spl.count)

    for var i in 0..<spl.count {
        for var j in i+1..<spl.count {
            if spl[i] == spl[j] {
                arr[i] = j - i
                break
            }
        }
    }
    arr.reverse()
    return arr
}

solution("banana")

let s = "banana"
//let s = "foobar"
//let sr = s.reversed()
let sr = String(s.reversed())
let ssr = sr.split(separator: "")
//let spl = s.split(separator: "")
let spl = String(s.reversed()).split(separator: "")

let sMap = s.map { String($0) }
print(sMap)

var arr = [Int](repeating: -1, count: spl.count)
print(arr)
for var i in 0..<spl.count {
    
    for var j in i+1..<spl.count {
        if spl[i] == spl[j] {
            print(i,j)
            //arr.append(j - i)
            arr[i] = j - i
            break
        }
    }
}
print(arr)
arr.reverse() //그냥 a = 3 입력하듯이 입력해줘야한다.
print(arr)

let arrReverse = arr.reverse() //reverse()는 새로운 배열을 리턴하는게 아니기 떄문에 이렇게 사용하면 () 값이 나온다.
print(arrReverse) //사용불가.

//문자열을 뒤부터 찾아가자.
//만약 banana라면 ananab 순으로.
//str이
//그럼 a는 2칸,4칸앞에 있지만 가까운 2로. 만약 앞에 없으면 -1
//for (idx, str) in s.enumerated().reversed() {
//    print(str)
//}


