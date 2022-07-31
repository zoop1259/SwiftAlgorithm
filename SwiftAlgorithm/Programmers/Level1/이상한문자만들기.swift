import Foundation

func 이상한문자만들기(_ s:String) -> String {
    var arr: [String] = []
    var x = 0
    for i in s {
        if x % 2 == 0 {
            arr.append(String(i.uppercased()))
        } else {
            arr.append(String(i.lowercased()))
        }
        x += 1
        if i == " " {
            x = 0
        }
    }
    return arr.joined()
}

/*
 
 let a = "lloo nn  ll"
 var arr: [String] = []
 var x = 0

 for i in a {
     //처음 인덱스는 0 이고 0은 짝수기 때문에 바로 대문자로.
     if x % 2 == 0 {
         arr.append(String(i.uppercased()))
     } else {
         arr.append(String(i.lowercased()))
     }
     //x값을 올려주다가
     x += 1
     //띄어쓰기를 만나면 x값을 다시 초기화해줘야한다.
     //그렇지 않으면 문제에서 요구한 띄어쓰기 구분이 안되기 때문.
     if i == " " {
         x = 0
     }
 }

 print(arr.joined())

 
 */
