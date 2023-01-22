import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var answer:Int = 0
    explore(dungeons: dungeons, answer: &answer, k:k, count: 0)
    return answer
}

func explore(dungeons:[[Int]],answer:inout Int,k:Int,count:Int) {
    answer = max(answer,count)
    for (i,dungeon) in dungeons.enumerated() {
        var newDungeons:[[Int]] = dungeons
        if dungeon[0] <= k && dungeon[1] <= k{
            let newK = k - dungeon[1]
            newDungeons.remove(at: i)
            explore(dungeons:newDungeons,answer: &answer,k: newK,count: count + 1)
        }
    }
}

solution(80, [[80,20],[50,40],[30,10]])
//solution(40, [[40, 20], [10, 10], [10, 10], [10, 10], [10, 10]])
//solution(40, [[40, 20], [10, 10], [10, 10]])

/*
 func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
     return explore(k, dungeons, 0)
 }

 private func explore(_ k: Int, _ dungeons: [[Int]], _ depth: Int) -> Int {
     return dungeons.map { dungeon in
         k >= dungeon[0] ? explore(k - dungeon[1], dungeons.filter { elem in dungeon != elem }, depth + 1) : depth
     }.max() ?? depth
 }
 
 */





/* 반례를 찾기 힘들어 이방법은 실패.
 func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
     // 안되면 x를 집어넣고 x가 포함되어있으면 카운팅 시키지 않는걸로?
     //아냐아냐 그냥 Int로 해서 피로도에 미치치 않으면 -9999 떄려버리지 뭐.
     var dic = [Int: Int]()
     for i in 0..<dungeons.count {
         dic[i] = k
     }
     var arr = [Int](repeating: 0, count: dungeons.count)
     
     var count = 0
     for i in 0..<dungeons.count {
         //count = 0
         for j in dungeons {
             print(j[0])
             if dic[count]! >= dungeons[i][0] {
                 dic[count]! -= dungeons[i][1]
                 arr[count] += 1
             } else {
                 dic[count]! -= 9999
             }
             print(dic)
             print(arr)
             if count >= dungeons.count - 1 {
                 count /= dungeons.count
             } else {
                 count += 1
             }
         }
     }
     var res = 0
     
     if let max = arr.max() {
         if max < 0 {
             return 0
         } else {
             res = max
         }
     }
     return res
 }
 */

/* 이방식은 1324이 불가능하다.
 func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
     // 안되면 x를 집어넣고 x가 포함되어있으면 카운팅 시키지 않는걸로?
     //아냐아냐 그냥 Int로 해서 피로도에 미치치 않으면 -9999 떄려버리지 뭐.
     var dic = [Int: Int]()
     var reverseDic = [Int: Int]()
     for i in 0..<dungeons.count {
         dic[i] = k
         reverseDic[i] = k
     }
     
     var arr = [Int](repeating: 0, count: dungeons.count)
     print(dic, arr)
     var reverseArr = [Int](repeating: 0, count: dungeons.count)
     
     for i in 0..<dic.count {
         for j in 0..<dic.count {
             //i 가 0이면 j 는  1, 2, 0 순으로
             //i 가 1이면 j 는  2, 0 ,1 순으로
             //i 가 2이면 j 는  0, 1, 2 순으로
             var s = j + i
         
             if s >= dic.count - 1 {
                 s %= dic.count
                 if dic[i]! >= dungeons[s][0] {
                     dic[i]! -= dungeons[s][1]
                     arr[i] += 1
                 } else {
                     dic[i]! -= 9999
                 }
             } else {
                 if dic[i]! >= dungeons[s][0] {
                     dic[i]! -= dungeons[s][1]
                     arr[i] += 1
                 } else {
                     dic[i]! -= 9999
                 }
             }
         }
     }
     
     for i in stride(from: dungeons.count - 1, through: 0, by: -1) {
         for j in stride(from: dungeons.count - 1, through: 0, by: -1) {
             //하여튼 210, 102, 021,
             var s = i + j
 //            print(s)
 //            print(reverseDic)
             s -= dungeons.count - 1
             if s >= 0 {
                 if reverseDic[i]! >= dungeons[s][0] {
                     reverseDic[i]! -= dungeons[s][1]
                     reverseArr[i] += 1
                 } else {
                     reverseDic[i]! -= 9999
                 }
             } else if s < 0 {
                 s += dungeons.count
                 if reverseDic[i]! >= dungeons[s][0] {
                     reverseDic[i]! -= dungeons[s][1]
                     reverseArr[i] += 1
                 } else {
                     reverseDic[i]! -= 9999
                 }
             }
         }
     }
     
     print(dic, reverseDic ,arr ,reverseArr)
     let res = [arr, reverseArr].flatMap{ $0 }.max() ?? 0 // 4
     return res
 }
 
 */
