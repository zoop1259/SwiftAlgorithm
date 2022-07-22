import Foundation

func 내림차순으로배치하기(_ n:Int64) -> Int64 {
    
//let n:Int64 = 118372
//담을 배열을 만든다.
var arr: [String] = []
//문자열로 변환후
let a = String(n)
//반복문을 통해 요소하나하나를 배열에 담는다.
for i in a {
    print(i)
    arr.append(String(i))
}
//그후 정렬하고
let sorta = arr.sorted(by: >)
//배열을 String으로 만든다.
let joina = sorta.joined(separator: "")
let answer = Int64(joina)!
    
print(answer)
    
    return answer
    
    //맘에드는 답.
    //이렇게 보아하니.. 마지막으로 변환하고싶은 타입이 맨앞에 오는구나...
    //return Int64(String(Array(String(n)).sorted { $0 > $1 }))!
    
    /*
     let a = 118372
     let b = String(a).sorted(by: >) //여기서 자동으로 각 배열로 반환하네...
     //let c = Array(b)
     let d = String(b)
     print(b)
     //print(c)
     print(d)

     let aa = Int64(String(String(a).sorted(by: >)))!
     print(aa)

     */
}
