import UIKit

/* 제출한 답
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var dic = [Int: Double]()
    var challenger = stages.count

    for i in 1...N {
        var clear = 0
        for j in 0..<stages.count {
            if stages[j] == i {
                clear += 1
            }
        }

        challenger -= clear

        let fail = Double(clear) / Double(challenger)
        dic[i] = fail
    }
    print(dic)
    let res = dic.sorted(by: <).sorted { $0.value > $1.value }
    return res.map { $0.key }
}
 */


//타인 코드 분석...
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var rate = [Int:Float]()
    let dic = stages.reduce(into: [Int:Int]()) { $0[$1, default: 0] += 1 }
    //stage의 값에 맞게 dic을 생성하고. key값은 기본 1부터 이며. value의 값은 기본적으로 0이지만 key값이 없으면 생성되지 않기에 보이지 않는다.
    print(dic)
    
    for n in 1...N {
        //예제 1같은 경우는 5스테이지에 머무르는사람이 없기때문에 0값을 넣는다,  그리고 filter를 통해 n보다 높은놈들의 수를 가져온다.
        print(Float(dic[n] ?? 0), dic.filter { $0.key > n }.map { $0.value }.reduce(0, +))
        //그 놈들을 더한값으로
        //print(Float(dic.filter { $0.key > n }.map { $0.value }.reduce(0, +)))
        
        //나눈값
        print(Float(dic[n] ?? 0) / Float(dic.filter { $0.key > n }.map { $0.value }.reduce(0, +)))
        //rate에 넣는다. 답은 맞는데.. 만약 실패율을 보여달라하면 어떻게 계산해야하는거지...
        rate[n] = Float(dic[n] ?? 0) / Float(dic.filter { $0.key > n }.map { $0.value }.reduce(0, +))
    }

    //다음 키값을 기준으로 오름차순 정렬후.
    return rate.sorted(by: <).sorted { $0.value > $1.value }.map { $0.key }
}
//solution(4, [4,4,4,4,4])
//solution(5, [2, 1, 2, 6, 2, 4, 3, 3])
solution(5, [2, 1, 2, 6, 2, 2, 3, 3])










//삽질들...
/* 조금 더 줄었지만 여전히 시간초과.
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var dic = [Int: Double]()
    
    for i in 1...N {
        //let challenger = stages.filter { $0 >= (i + 1)}.count
        var challenger = 0
        var clear = 0
        for j in stages {
            if j >= i {
                challenger += 1
            }
            
            if j > i {
                clear += 1
            }
        }

        print(clear, challenger)
        let fail: Double = (Double(challenger) - Double(clear)) / Double(challenger)
        dic[i] = fail
    
        challenger = 0
        clear = 0
    }
    print(dic)
    let sort = dic.sorted(by: <).sorted { $0.value > $1.value }
    return sort.map { $0.key }
}
 */

/*
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var dic = [Int: Double]()
    var challenger = stages.count
    let stage = stages.count

    for i in 1...N {
        var clear = 0
        
        for j in 0..<stage {
            if stages[j] == i {
                print(stages[j], i)
                clear += 1
            }
        }
        
        challenger -= clear
        
        let fail = Double(clear) / Double(challenger)
        dic[i] = fail
    }
    print(dic)
    let sort = dic.sorted(by: <).sorted { $0.value > $1.value }
    return sort.map { $0.key }
}
*/

/*
 for 문안에 filter를 쓰지말자
 func solution(_ N:Int, _ stages:[Int]) -> [Int] {
         var tuple = [(Int, Double)]() // [스테이지: 실패율]
         var player = stages.count
         
         for i in 1...N {
             var current = 0
             for j in 0..<stages.count {
                 if stages[j] == i {
                     current += 1
                 }
             }
             
             player -= current
             
             // 딕셔너리로 묶어서 담자
             var ratio = Double(current) / Double(player)
             tuple.append((i, ratio))
         }
         print(tuple)

         tuple = tuple.sorted(by: {$0.1 > $1.1 })
         
         return tuple.map{ $0.0 }
     }
 */

/*
 filter를 for문으로 돌렸는데 시간을 조금 줄어들었어도 시간초과는 그대로다. 내가봤을떈 로직이 문제다.
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var dic = [Int: Double]()
    
    for i in 1...N {
        //let challenger = stages.filter { $0 >= (i + 1)}.count
        var challenger = 0
        var clear = 0
        for j in stages {
            if j >= i {
                challenger += 1
            }
        }
//        let clear = challenger - stages.filter { $0 > (i + 1)}.count
        for j in stages {
            if j > i {
                clear += 1
            }
        }
        
        
        
        print(clear, challenger)
        let fail: Double = (Double(challenger) - Double(clear)) / Double(challenger)
        dic[i] = fail
    
        challenger = 0
        clear = 0
    }
    print(dic)
    let sort = dic.sorted(by: <).sorted { $0.value > $1.value }
    return sort.map { $0.key }
}
*/

/*
 //60퍼센트만큼 줄였지만 그래도 안됨...
 func solution(_ N:Int, _ stages:[Int]) -> [Int] {
     var dic = [Int: Double]()
     for stage in stages {
         if stage <= N {
             dic[stage, default: 0] += 1
         }
     }
     var arr = [(stage: Int, failRate: Double)]()
     for i in 1...N {
         let challenger = stages.filter { $0 >= i }.count
         let clear = dic[i, default: 0]
         let failRate = Double(clear) / Double(challenger)
         arr.append((stage: i, failRate: failRate))
     }
     arr.sort {
         if $0.failRate != $1.failRate {
             return $0.failRate > $1.failRate
         } else {
             return $0.stage < $1.stage
         }
     }
     return arr.map { $0.stage }
 }

 solution(4, [4,4,4,4,4])
 */

/*
여전히 5,9,22 시간초과
 func solution(_ N:Int, _ stages:[Int]) -> [Int] {
     var dic = [Int: Double]()
     for i in 0..<N {
         let challenger = stages.filter { $0 >= (i + 1)}.count
         let clear = challenger - stages.filter { $0 > (i + 1)}.count
         let fail = Double(clear) / Double(challenger)
         dic[i+1] = fail
     }
     let sort = dic.sorted(by: <).sorted { $0.value > $1.value }
     
     return sort.map { $0.key }
 }
 */

/*
 5,9,22 시간초과
 func solution(_ N:Int, _ stages:[Int]) -> [Int] {

     var dic = [Int: Double]()
     
     for i in 0..<N {
         let challenger = stages.filter { $0 >= (i + 1)}.count
         let clear = challenger - stages.filter { $0 > (i + 1)}.count
         
         print("Stage: \(i+1), 도전자: \(challenger), 클리어한사람: \(clear) ")
         
         let fail = Double(clear) / Double(challenger)
         dic[i+1] = fail
         
     }
     
     // 실패율이 높은 순서대로 내림차순 숫자 등록, 실패율이 같으면 오름차순
     let sort = dic.sorted(by: <).sorted { $0.value > $1.value }
     
     var res = [Int]()
     for dicElement in sort {
         let key = dicElement.0
         res.append(key)
     }
     
     print(dic)
     print(sort)
     print(res)
     return res
 }

 solution(4, [4,4,4,4,4])
 */


/*
 63% 통과.. 그안에 시간초과도 있다.
 func solution(_ N:Int, _ stages:[Int]) -> [Int] {

     var arr = [Double]()
     var dic = [Int: Double]()
     
     for i in 0..<N {
         let challenger = stages.filter { $0 >= (i + 1)}.count
         let clear = stages.filter { $0 > (i + 1)}.count
         //arr[i].append(stages.filter{ $0 > N })
         
         //        for j in stages {
         //            //도달한 스테이지 / 플레이어수
         //        }
         
         print("Stage: \(i+1), 도전자: \(challenger), 클리어한사람: \(clear) ")
         
         let fail: Double = (Double(challenger) - Double(clear)) / Double(challenger)
         arr.append(fail)
         
         dic[i+1] = fail
         
     }
     //print(arr)
     //print(dic)
     
     //print(dic.sorted{ $0.value > $1.value })
     
     let sortedDic = dic.sorted { (arg1, arg2) -> Bool in
         let (key1, value1) = arg1
         let (key2, value2) = arg2
         if value1 == value2 {
             // value 값이 같을 경우 key 값을 기준으로 정렬
             return key1 < key2
         }
         // value 값이 다를 경우 value 값을 기준으로 정렬
         return value1 > value2
     }

     print(sortedDic) // [(4, 1.0), (1, 0.0), (2, 0.0), (3, 0.0)]
     
     var res = [Int]()
     
     for dicElement in sortedDic {
         let key = dicElement.0
         res.append(key)
     }
     
     print(res)
     //for i in 0..<arr.count - 1 {
 //        for (idx, rank) in arr.enumerated() {
 //            print(idx)
 //        }
     //}

     
     return res
 }
 //solution(5, [2, 1, 2, 6, 2, 4, 3, 3]) //0.125, 0.39, 0.5, 0.5, 0.0
                                         //3번이 높고 4번이 높고 2번이 높고 1번이 높고 5번이 낮다. 이렇게.
 solution(4, [4,4,4,4,4])

 */
