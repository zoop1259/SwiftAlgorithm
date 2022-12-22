import UIKit

// 딕셔너리로 한번 해봤지만 순서도 다시 정렬해야해서 패스.
func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    let list = report.map { $0.components(separatedBy: " ")} //0에는 신고자 1에는 신고당한놈
    let a = Set(list) //중복신고 무시하기.
    //print(a)
    //print(a[0])
    
    var dic = [String: [String]]()
    //print(dic)
    
    for i in id_list {
        dic[i] = [] //list를 통해 key값으로 사전생성
    }
    //print(dic)
    
    for i in a {
        dic[i[1]]?.append(i[0]) //신고당한놈이 : key, 신고한놈 : value
    }
    //print(dic)
    
    var res = [Int](repeating: 0, count: id_list.count)
    
    for i in dic {
        if i.value.count >= k {
           // print(i.value)
            
            for j in i.value {
                print(j)
                if let index = id_list.firstIndex(of: j) {
//                    yy.remove(at: index)
                    res[index] += 1
                }
            }
            
        }
        
    }
    
    print(res)
    
    return res
}
//solution(["muzi", "frodo", "apeach", "neo"]    , ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"]    , 2)
solution(["con", "ryan"]    , ["ryan con", "ryan con", "ryan con", "ryan con"]    , 3)



