import UIKit

var mos = [ //배열은 replacing이 안되고 for루프를 돌리면 다 돌아간다 ㅠ
(".-","a"),
("-...","b"),
("-.-.","c"),
("-..","d"),
(".","e"),
("..-.","f"),
("--.","g"),
("....","h"),
("..","i"),
(".---","j"),
("-.-","k"),
(".-..","l"),
("--","m"),
("-.","n"),
("---","o"),
(".--.","p"),
("--.-","q"),
(".-.","r"),
("...","s"),
("-","t"),
("..-","u"),
("...-","v"),
(".--","w"),
("-..-","x"),
("-.--","y"),
("--..","z")
]

var dic = [
    ".-" : "a",
    "-..." : "b",
    "-.-." : "c",
    "-.." : "d",
    "." : "e",
    "..-." : "f",
    "--." : "g",
    "...." : "h",
    ".." : "i",
    ".---" : "j",
    "-.-" : "k",
    ".-.." : "l",
    "--" : "m",
    "-." : "n",
    "---" : "o",
    ".--." : "p",
    "--.-" : "q",
    ".-." : "r",
    "..." : "s",
    "-" : "t",
    "..-" : "u",
    "...-" : "v",
    ".--" : "w",
    "-..-" : "x",
    "-.--" : "y",
    "--.." : "z"
]
var greeting = ".- -..."

var a = greeting.components(separatedBy: " ")
var newA = ""
//var newA = a
//
//for (searchString, replacement) in mos {
//    let newB = newA.replacingOccurrences(of: searchString, with: replacement)
//}

for i in a {
    
    newA.append(dic[i] ?? "")
    
}

print(newA)

//내가 입력한 정답.
func solution(_ letter:String) -> String {
    var moss = [
    ".-" : "a",
    "-..." : "b",
    "-.-." : "c",
    "-.." : "d",
    "." : "e",
    "..-." : "f",
    "--." : "g",
    "...." : "h",
    ".." : "i",
    ".---" : "j",
    "-.-" : "k",
    ".-.." : "l",
    "--" : "m",
    "-." : "n",
    "---" : "o",
    ".--." : "p",
    "--.-" : "q",
    ".-." : "r",
    "..." : "s",
    "-" : "t",
    "..-" : "u",
    "...-" : "v",
    ".--" : "w",
    "-..-" : "x",
    "-.--" : "y",
    "--.." : "z"
    ]
    
    var newLetter = ""
    for i in letter.components(separatedBy: " ") {
        newLetter.append(moss[i] ?? "")
    }
    
    return newLetter
    //return만 한줄로 하려면..
    //return letter.components(separatedBy: " ").map { morse[$0] ?? "" }.reduce("", +)

}
