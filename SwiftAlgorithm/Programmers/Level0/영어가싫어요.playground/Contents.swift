import UIKit

var numbers = "onetwothreefourfivesixseveneightnine"


//let numStr = numbers.replacing("one", with: "1")
//    .replacing("two", with: "2")
//    .replacing("three", with: "3")
//    .replacing("four", with: "4")
//    .replacing("five", with: "5")
//    .replacing("six", with: "6")
//    .replacing("seven", with: "7")
//    .replacing("eight", with: "8")
//    .replacing("nine", with: "9")
//    .replacing("zero", with: "0")

let str = numbers.replacingOccurrences(of: "one", with: "1")
    .replacingOccurrences(of: "two", with: "2")
    .replacingOccurrences(of: "three", with: "3")
    .replacingOccurrences(of: "four", with: "4")
    .replacingOccurrences(of: "five", with: "5")
    .replacingOccurrences(of: "six", with: "6")
    .replacingOccurrences(of: "seven", with: "7")
    .replacingOccurrences(of: "eight", with: "8")
    .replacingOccurrences(of: "nine", with: "9")
    .replacingOccurrences(of: "zero", with: "0")



