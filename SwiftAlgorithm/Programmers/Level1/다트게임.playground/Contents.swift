import UIKit

func solution(_ dartResult:String) -> Int {
    
    let num = dartResult.split(whereSeparator: { $0.isLetter || $0 == "*" || $0 == "#" })
    let strArr = dartResult.split(whereSeparator: { $0.isNumber })
    
    var numbers = num.map { Int($0) ?? 0 }
    
    print(numbers)
    print(strArr)
    
    for (idx, str) in strArr.enumerated() {
        for char in String(str) {
            
            //let idx = Int(index)
            
            if char == "D" {
                numbers[idx] *= numbers[idx]
            } else if char == "T" {
                numbers[idx] *= numbers[idx] * numbers[idx]
            }
            
            if char == "#" {
                numbers[idx] = -numbers[idx]
            }
            if char == "*" {
                
                if idx == 0 {
                    numbers[idx] = numbers[idx] * 2
                } else {
                    numbers[idx] = numbers[idx] * 2
                    numbers[idx - 1] = numbers[idx - 1] * 2
                }
            }
        }
    }
    
    print(numbers)
    print(numbers.reduce(0, +))
    return numbers.reduce(0, +)
}



//solution("1S2D*3T")
//solution("1D2S#10S") //9가 나와야 한다.
//solution(    "1S*2T*3S") //23
//solution("1D2S3T*") // 59
//solution("10S1S0S*") //12
solution("1S2D*3T*") //72
//solution("1S2D3T*") //63

/* 22번 에러...
func solution(_ dartResult:String) -> Int {
    //var arr = dartResult.map { String($0) }
    
    var a = [String]()
    var imsi = ""

    for i in dartResult {

        if i.isNumber {
            imsi += String(i)
        } else {
            if imsi.isEmpty {
                a.append(imsi)
                a.append(String(i))
            } else {
                a.append(imsi)
                imsi = ""
                a.append(String(i))
            }
        }
    }
    var arr = a.filter{ !$0.isEmpty }
    print(arr.filter{ !$0.isEmpty })
    
    
    var i = arr.count - 1
    var res = 0
    var star = 1
    var starCount = 0
    
    
    while i >= 0 {
        if arr[i] == "T" {
            if starCount >= 1 {
                res += (Int(arr[i - 1])!) * (Int(arr[i - 1])!) * (Int(arr[i - 1])!) * star
                i -= 1
                starCount -= 1
            } else {
                res += (Int(arr[i - 1])!) * (Int(arr[i - 1])!) * (Int(arr[i - 1])!)
                i -= 1
            }
        } else if arr[i] == "D" {
            print(starCount)
            if starCount >= 1 {
                res += (Int(arr[i - 1])!) * (Int(arr[i - 1])!) * star
                i -= 1
                starCount -= 1
            } else {
                res += (Int(arr[i - 1])!) * (Int(arr[i - 1])!)
                i -= 1
            }

        } else if arr[i] == "S" {
            if starCount >= 1 {
                res += (Int(arr[i - 1])!) * star
                starCount -= 1
                i -= 1
            } else {
                res += (Int(arr[i - 1])!)
                i -= 1
            }
        } else if arr[i] == "*" {
            
            if starCount == 0 {
                starCount += 2
                star = 2
            } else {
                starCount += 1
                star = 4
            }
            
//            if starCount >= 2 {
//                starCount += 1
//                star = 2 * 2
//            } else if starCount < 2 {
//                starCount += 2
//                star = 2
//            }
            //i -= 1
//            if arr[i - 1] == "T" {
//                res += (Int(arr[i - 2]) ?? 0) * (Int(arr[i - 2]) ?? 0) * (Int(arr[i - 2]) ?? 0) * star * sharp
//                print("연산 전 i : ",i)
//                i -= 2
//                print("연산 후 i : ",i)
//            } else if arr[i - 1] == "D" {
//                res += (Int(arr[i - 2]) ?? 0) * (Int(arr[i - 2]) ?? 0) * star * sharp
//                print("연산 전 i : ",i)
//                i -= 2
//                print("연산 후 i : ",i)
//            } else if arr[i - 1] == "S" {
//                res += (Int(arr[i - 2]) ?? 0) * star * sharp
//                print("연산 전 i : ",i)
//                i -= 2
//                print("연산 후 i : ",i)
//            }
        } else if arr[i] == "#" {
            if arr[i - 1] == "T" {
                if starCount >= 1 {
                    res += (Int(arr[i - 2])!) * (Int(arr[i - 2])!) * (Int(arr[i - 2])!) * star * -1
                    print("연산 전 i : ",i)
                    i -= 1
                    print("연산 후 i : ",i)
                    starCount -= 1
                } else {
                    res += (Int(arr[i - 2])!) * (Int(arr[i - 2])!) * (Int(arr[i - 2])!) * -1
                    i -= 1
                }
            } else if arr[i - 1] == "D" {
                if starCount >= 1 {
                    res += (Int(arr[i - 2])!) * (Int(arr[i - 2])!) * star * -1
                    print("연산 전 i : ",i)
                    i -= 1
                    print("연산 후 i : ",i)
                    starCount -= 1
                } else {
                    res += (Int(arr[i - 2])!) * (Int(arr[i - 2])!) * -1
                    i -= 1
                }
            } else if arr[i - 1] == "S" {
                if starCount >= 1 {
                    print("연산전 res: ", res)
                    res += (Int(arr[i - 2])!) * star * -1
                    print("연산후 res: ", res)
                    i -= 1
                    starCount -= 1
                } else {
                    res += (Int(arr[i - 2])!) * -1
                    i -= 1
                }
            }
        }
        
        i -= 1
        
        if starCount <= 0 {
            starCount = 0
        }
        
        print(res)
        
    }
    return res
}
*/
