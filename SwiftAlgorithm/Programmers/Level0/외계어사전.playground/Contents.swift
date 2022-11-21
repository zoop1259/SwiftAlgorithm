import UIKit

let spell = ["p", "o", "s"]
//let dic = ["sod", "eocd", "qixm", "adio", "soo"]
let dic = ["podu", "eocd", "qixm", "adio", "soo"]
let dicMap = dic[1].map{$0}
print(dicMap)
var copySpell = spell

var arr : [[String]] = []

for i in stride(from: 0, to: dic.count, by: 1) {
    arr.append(dic[i].map{ String($0)})
}
print(arr)

var a = 0
//print(arr.count)
for i in 0..<arr.count {
    //print("ㅁㄴㅇ a : \(a)")
    //a = 0
    
    for j in 0..<arr[i].count {
//        print("\(arr[i][j])")
        //a += 1
        //print("여기 a : \(a)")
    }
    
    
    
}
            //2차원배열생성         //1차원에 뭘 담을지,      //몇개를 담을지,  2차원 배열 개수
//var arr = [[String]](repeating: Array(repeating: <#T##_#>, count: <#T##Int#>), count: <#T##Int#>)

//arr.append([dic.map{$0}])

//var arr = [[String]](repeating: Array(dic.map{$0}, count: dic.map{$0}.count), count: dic.count)
for i in 0...dic.count - 1 {
    //print(dic[i].map{$0})
    
//    if dic[i].map{String($0)}.contains(copySpell) == true {
//        copySpell.remove(at: i)
//        print(copySpell)
//    }
    
    
}

//let asd = ["a", "b", "o"]
//var zxc = [String]()
//for i in asd {
//    if spell.contains(i) == true {
//        if zxc.contains(i) == false {
//            zxc.append(i)
//        }
//    }
//}
//print(zxc)

//배열을 만들어 배열에 원소하나하나 집어넣어서 카운트값을 비교해서 일치하면 리턴1 아니면 리턴2 하고싶지만...

let asd = ["ab", "oa"]
var zxc = [String]()

for i in 0...asd.count - 1 {
    
    if spell.contains(asd[i].map{String($0)}) == true {
        if zxc.contains(asd[i].map{String($0)}) {
            zxc.append(asd[i])
        }
    }
    
}
print(zxc)
