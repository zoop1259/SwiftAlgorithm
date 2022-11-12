import UIKit

var greeting = 23

let replacements = [
    (0,"a"),
    (1,"b"),
    (2,"c"),
    (3,"d"),
    (4,"e"),
    (5,"f"),
    (6,"g"),
    (7,"h"),
    (8,"i"),
    (9,"j"),
    (10,"k"),
    (11,"l"),
    (12,"m"),
    (13,"n"),
    (14,"o"),
    (15,"p"),
    (16,"q"),
    (17,"r"),
    (18,"s"),
    (19,"t"),
    (20,"u"),
    (21,"v"),
    (22,"w"),
    (23,"x"),
    (24,"y"),
    (25,"z")
]


func solution(_ age:Int) -> String {
    
    let str = String(age)
    
    var replace = str.replacingOccurrences(of: "0", with: "a")
    .replacingOccurrences(of: "1", with: "b")
    .replacingOccurrences(of: "2", with: "c")
    .replacingOccurrences(of: "3", with: "d")
    .replacingOccurrences(of: "4", with: "e")
    .replacingOccurrences(of: "5", with: "f")
    .replacingOccurrences(of: "6", with: "g")
    .replacingOccurrences(of: "7", with: "h")
    .replacingOccurrences(of: "8", with: "i")
    .replacingOccurrences(of: "9", with: "j")
    .replacingOccurrences(of: "10", with: "k")
    .replacingOccurrences(of: "11", with: "l")
    .replacingOccurrences(of: "12", with: "m")
    .replacingOccurrences(of: "13", with: "n")
    .replacingOccurrences(of: "14", with: "o")
    .replacingOccurrences(of: "15", with: "p")
    .replacingOccurrences(of: "16", with: "q")
    .replacingOccurrences(of: "17", with: "r")
    .replacingOccurrences(of: "18", with: "s")
    .replacingOccurrences(of: "19", with: "t")
    .replacingOccurrences(of: "20", with: "u")
    .replacingOccurrences(of: "21", with: "v")
    .replacingOccurrences(of: "22", with: "w")
    .replacingOccurrences(of: "23", with: "x")
    .replacingOccurrences(of: "24", with: "y")
    .replacingOccurrences(of: "25", with: "z")
    
    
    return replace
}
solution(23)

//스칼라 이용
func solution2(_ age:Int) -> String {
    let alpha = (97...122).map({Character(UnicodeScalar($0))}),
        charAge = "\(age)".map { alpha[Int(String($0))!] }
    return String(charAge)
}

//한줄코드
func solution3(_ age:Int) -> String {
    return String(age).reduce("") { $0 + String(UnicodeScalar(97 + Int(String($1))!)!)
    }
}
