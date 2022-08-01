/*
출력
첫째 줄에 주어진 정수 N개의 최솟값과 최댓값을 공백으로 구분해 출력한다.

예제 입력 1
5
20 10 35 30 7
예제 출력 1
7 35

*/
func N10818() {
 
    let n = readLine()!
    let nn = Int(n)!
    var maxa = 0
    var mina = 0

    for i in 1...nn {
        let aa = readLine()!.split(separator:" ").map{Int(String($0))!}
        maxa = aa.max()!
        mina = aa.min()!
    }

    print(mina,maxa)

}
