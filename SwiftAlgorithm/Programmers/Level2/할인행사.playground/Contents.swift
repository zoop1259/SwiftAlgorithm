import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var wents = [String]()
    
    for i in 0..<want.count {
        for _ in 0..<number[i] {
            wents.append(want[i])
        }
    }
    var wants = wents
    var res = 0
    
    //내 생각엔? 뭐든 처음 걸리는걸 기준으로
    for i in 0..<discount.count {
        var count = 0 //10일까지만 할인함.
        wants = wents
        for j in i..<discount.count {
            print(count)
            print(wants)
            if count == 10 {
                //print("할인기간안에 모든걸 할인하지 않는다.")
                break
            } else {
                if wants.contains(discount[j]) {
                    if let idx = wants.firstIndex(of: discount[j]) {
                        wants.remove(at: idx)
                    }
                    count += 1
                } else {
                    count += 1
                }
            }
            if wants.isEmpty {
                print("비었다.")
                res += 1
            }
        }
    }
    return res
}

solution(["banana", "apple", "rice", "pork", "pot"]    , [3, 2, 2, 2, 1]    , ["chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"]    )
//solution(["banana", "apple", "rice", "pork", "pot"]    , [3, 2, 2, 2, 1]    , ["a","a","a","chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"]    )
//solution2(["A","B","C","D","E","F","G","H","I","J"], [1,1,1,1,1,1,1,1,1,1], ["C","C","C","C","C","C","C","C","C","C","C","B","A","B","C","D","E","F","G","H","I","J"])

/*
 number의 개수가 10개가 안되면 틀린다.
 func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
     var wents = [String]()
     
     for i in 0..<want.count {
         for _ in 0..<number[i] {
             wents.append(want[i])
         }
     }
     var wants = wents
     var res = 0
     
     //내 생각엔? 뭐든 처음 걸리는걸 기준으로
     for i in 0..<discount.count {
         var count = 0 //10일까지만 할인함.
         wants = wents
         for j in i..<discount.count {
             res = i
 //            if discount.count - i <= 9 {
 //                print("찾기못함", discount.count - i)
 //                return 0
 //            } else {
                 if wants.isEmpty {
                     print("비었다.")
                     return i + 1
                 }
                 print(count)
                 print(wants)
                 if count == 10 {
                     //print(want)
                     if wants.isEmpty {
                         return i + 1
                     } else {
                         //print("할인기간안에 모든걸 할인하지 않는다.")
                         break
                     }
                 } else {
                     if wants.contains(discount[j]) {
                         if let idx = wants.firstIndex(of: discount[j]) {
                             wants.remove(at: idx)
                         }
                         count += 1
                     } else {
                         count += 1
                     }
                 }
                 
             }
         }
         
    // }
     return res + 1
 }

 */
