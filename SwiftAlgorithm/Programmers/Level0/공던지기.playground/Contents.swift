func solution(_ numbers:[Int], _ k:Int) -> Int {

    var count = 1
    if k == 1 {
        return numbers[0]
    }
    for i in 2...k {
        count += 2 //1,3,5,7...
    }
    for j in 1...numbers.count - 1 {
        return count % numbers.count
    }
    return numbers[count]
}


//한줄
func solution2(_ numbers:[Int], _ k:Int) -> Int {
    return numbers[((k-1)*2) % numbers.count]
}
