import Foundation

func solution(_ my_string:String) -> String {
    
    let a = my_string.map { String($0) }
    var arr = [String]()

    for i in a {
        if arr.contains(i) == false {
          arr.append(i)
        }
    }
    return arr.joined()
}

    