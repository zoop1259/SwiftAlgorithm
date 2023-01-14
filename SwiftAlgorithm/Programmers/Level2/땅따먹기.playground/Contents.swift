import UIKit
print(1)

func solution(_ land:[[Int]]) -> Int{
    var land = land
    for i in 0..<(land.count-1) { //행이 제한되어있으므로.
        land[i+1][0] += max(land[i][1], land[i][2], land[i][3])
        land[i+1][1] += max(land[i][0], land[i][2], land[i][3])
        land[i+1][2] += max(land[i][0], land[i][1], land[i][3])
        land[i+1][3] += max(land[i][0], land[i][1], land[i][2])
//        print(land)
    }
    print(land)
 
    guard let last = land.last else { return 0 }
    return max(last[0],last[1], last[2], last[3])
}

solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]])

/* 이건 모든 경우의 수
 func solution(_ land:[[Int]]) -> Int{
     var dp = land
     
     for i in 1..<land.count {
         for j in 0..<land[0].count {
             for k in 0..<land[0].count {
                 if j == k { continue }
                 dp[i][j] = max(dp[i][j], dp[i-1][k] + land[i][j])
             }
         }
     }
     
     return dp.last!.max()!
 }
 */

/* 이건 열마다 큰 값을 가져오기 떄문에 맥스값을 구할 수가 없다. 다이나믹 프로그래밍을 사용해야한다고 한다.
 func solution(_ land:[[Int]]) -> Int{
     var lands = land
     var answer = 0
     
     for i in 0..<lands.count - 1 {
         answer += lands[i].max() ?? 0
         let maxIndex = lands[i].firstIndex(of: lands[i].max() ?? 0) ?? 0
         lands[i + 1][maxIndex] = 0
         
         if i == lands.count - 2 {
             answer += lands[i + 1].max() ?? 0
         }
     }
     
     var downland = land
     var count = downland.count - 1
     var downAnswer = 0
     while count > 0 {
         print(downland[count].max() ?? 0)
         downAnswer += downland[count].max() ?? 0
         let maxIndex = downland[count].firstIndex(of: downland[count].max() ?? 0) ?? 0
         downland[count - 1][maxIndex] = 0
         if count == 1 {
             downAnswer += downland[count - 1].max() ?? 0
         }
         count -= 1

     }
     return answer >= downAnswer ? answer : downAnswer
 }
 */
