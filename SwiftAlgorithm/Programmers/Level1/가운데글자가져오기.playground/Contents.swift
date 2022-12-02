func solution(_ s:String) -> String {
    let sArr = s.map{String($0)}
    var arr = [String]()
    let sc = s.count / 2
    
    if s.count % 2 == 1 {
        arr.append(sArr[sc])
    } else {
        let sub = sArr
        arr.append(sArr[sc - 1])
        arr.append(sArr[sc])
    }
    return arr.joined()
}
