func solution(_ s:String) -> String {
    var ss = s.lowercased()
    var a = ss.map { String($0) }
    a[0] = a[0].uppercased()
    for i in 0..<a.count - 1 {
        if a[i] == " " {
            a[i + 1] = a[i + 1].uppercased()
        }
    }
    return a.reduce("", +)
}
