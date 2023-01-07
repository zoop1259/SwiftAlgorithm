import UIKit

//돼..됐다
func solution(_ numbers:[Int]) -> String {
    var zeroFilter = numbers
    if numbers.filter { $0 != 0 }.count == 0 {
        return "0"
    }
    let result = zeroFilter.map { String($0) }.sorted(by: >)
    print(result)
        
    var a = result.sorted { a, b in
        
        if a + b > b + a {
            return a < b
        } else if a + b < b + a {
            return a > b
        }
        return a > b
    }
    return a.joined(separator: "")
}

//solution([3, 30, 34, 5, 9])
//solution([979, 97, 978, 81, 818, 817]) //9799797881881817
//solution([123,1232]) //1232123
//solution([0,0,1])
//solution([1000, 999])
//solution([818, 81])
//solution([898, 89])
//solution([1, 10, 100, 1000, 818, 81, 898, 89, 0, 0])
//8989881881110100100000
//898988188111010010000






/*
 // 46.7/ 100 점.
func solution(_ numbers:[Int]) -> String {
    var zeroFilter = numbers
    if numbers.filter { $0 != 0 }.count == 0 {
        return "0"
    } else if numbers.filter { $0 == 0 }.count >= 1 {
        zeroFilter = zeroFilter.filter { $0 != 0}
        zeroFilter.append(0)
    }
    
    let result = zeroFilter.map { String($0) }.sorted(by: >)
        
    var a = result.sorted { a, b in
        if a.first == b.first {
            //print(a.count, b.count)
            if a.count < b.count {
                //print(a,b)
    //            return a < b
                var c = a
                for i in 0..<b.count - a.count {
                    if let bf = b.first {
                        c += String(bf)
                    }
                }
                //print(c)
                if let intb = Int(b) {
                    if let intc = Int(c) {
                        //print(intb, intc)
                        if intb >= intc {
                            return a > b
                        } else {
                            return a < b
                        }
                    }
                }
                
            }
        }
        return a > b
    }
    return a.joined(separator: "")
}
*/
