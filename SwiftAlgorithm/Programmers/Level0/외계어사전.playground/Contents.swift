import UIKit

//제출한답.
import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {

    var setB = Set(spell)  //셋으로 만들어주고

    var arr : [[String]] = [] //2차원 빈배열 생성해주고.

    for i in stride(from: 0, to: dic.count, by: 1) { //2차원 배열 안의 1차원배열에 값을 넣어주고.
        arr.append(dic[i].map{ String($0)})
    }
    
    var res = [Int]() //결과값을 위한 배열을 선언해주고.
    
    for i in 0..<arr.count {
        var setA = Set(arr[i]) //1차원 배열들을 set으로 만들어주고.
        if setA.intersection(setB).count == spell.count { //요소가 겹치는지 확인.
            res.append(1)
        } else {
            res.append(2)
        }
    }
    
    if res.contains(1) == true { //배열안에 1이 하나라도 있으면 리턴1
        return 1
    } else {
        return 2
    }
    
    return 0
}
//한줄코딩... 제한사항을 확실하게 준수하신듯.
//하나하나 해보자.
func solution2(_ spell: [String], _ dic: [String]) -> Int { dic.map { String($0.sorted()) }.contains(spell.sorted().joined()) ? 1 : 2 }



/* 삽질들...
let spell = ["p", "o", "s"]
//let dic = ["sod", "eocd", "qixm", "adio", "soo"]
let dic = ["podu", "eocd", "qixm", "adio", "soo"]

var setB = Set(spell)

var arr : [[String]] = []

for i in stride(from: 0, to: dic.count, by: 1) {
    arr.append(dic[i].map{ String($0)})
}
var a = [String]()
for i in 0..<arr.count {
    
    var setA = Set(arr[i])
    
    if setA.intersection(setB).count == spell.count {
        print("오오")
    } else {
        print("아니아니")
    }
    
}

var setB = Set(spell)
//var setA = Set(dic)
//
//for i in dic {
//    if setA.isSubset(of: setB) {
//        print("오오")
//    } else {
//        print("아니아니")
//    }
//}

let dicMap = dic[1].map{$0}
print(dicMap)
var copySpell = spell

var arr : [[String]] = []

for i in stride(from: 0, to: dic.count, by: 1) {
    arr.append(dic[i].map{ String($0)})
}
print(arr)

var setArr = Set(arr)

var a = 0
//print(arr.count)
for i in 0..<arr.count {
    //print("ㅁㄴㅇ a : \(a)")
    //a = 0
    
    var setA = Set(arr[i])
    
    if setA.isSubset(of: setB) {
        print("오오")
    } else {
        print("아니아니")
    }
    
    
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

*/
