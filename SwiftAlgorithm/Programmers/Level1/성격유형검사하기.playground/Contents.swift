import UIKit

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var arr = ["R", "T", "C", "F", "J", "M", "A", "N"]
    var dic = [String : Int]()
    
//    var dic = [String: [String]]()
//    //print(dic)
    
    for i in arr {
        dic[i] = 0 //list를 통해 key값으로 사전생성
    }
    print(dic)
    
//    for i in a {
//        dic[i[1]]?.append(i[0]) //신고당한놈이 : key, 신고한놈 : value
//    }
    //print(dic)
    
    for (idx, str) in survey.enumerated() {
        //print(str)
        if choices[idx] == 0 {
        } else if choices[idx] <= 3 {
            let a = String(str.prefix(1))
            //print(a)
            //print(dic[a])
            dic[a]? += abs(choices[idx] - 4)
            
        } else {
            let b = String(str.suffix(1))
            //print(b)
            //print(dic[b])
            dic[b]? += choices[idx] - 4
        }
        
//        for char in str {
//            print(char)
//            if choices[idx] == 0 {
//            } else if choices[idx] >= 4 {
//            }
//        }
    }
    print(dic)
    
    //RT
    //CF
    //JM
    //AN
    
    var res = ""
    if dic["R"]! >= dic["T"]! {
        res += "R"
    } else {
        res += "T"
    }
    
    if dic["C"]! >= dic["F"]! {
        res += "C"
    } else {
        res += "F"
    }
 
    if dic["J"]! >= dic["M"]! {
        res += "J"
    } else {
        res += "M"
    }
    
    if dic["A"]! >= dic["N"]! {
        res += "A"
    } else {
        res += "N"
    }
    /* 위 줄이는 방법... 왜 생각못했지..
     dict["R"]! >= dict["T"]! ? res.append("R") : res.append("T")
     dict["C"]! >= dict["F"]! ? res.append("C") : res.append("F")
     dict["J"]! >= dict["M"]! ? res.append("J") : res.append("M")
     dict["A"]! >= dict["N"]! ? res.append("A") : res.append("N")
     */
    
    print(res)
    return res
}
solution(["AN", "CF", "MJ", "RT", "NA"], [5, 3, 2, 7, 5])
