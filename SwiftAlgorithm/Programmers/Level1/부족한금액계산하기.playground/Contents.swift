import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var sum = 0
    let counts = count
    for i in 1...counts {
        sum += i * price
    }
    //
    return Int64(money - sum >= 0 ? 0 : abs(sum - money))
}


//한줄코딩
func solution2(_ price:Int, _ money:Int, _ count:Int) -> Int{
    return max((count + 1) * count / 2 * price - money , 0)
}
