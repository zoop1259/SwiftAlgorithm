func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    var a = arr.filter { $0 % divisor == 0}.sorted(by: <)
    
    if a.isEmpty == true {
        return [-1]
    }
    //
    
    return a
}
