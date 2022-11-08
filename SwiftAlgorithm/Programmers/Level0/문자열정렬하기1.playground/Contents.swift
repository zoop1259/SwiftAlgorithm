import UIKit

var my_string = "hi12392"

let a = my_string.filter { $0.isNumber }
print(a)

var arr = [Int]()

for i in my_string {
    if i.isNumber == true {
        arr.append(Int(String(i)) ?? 0)
    }
}

let arrsort = arr.sorted(by: <)

/*
 func solution(_ my_string:String) -> [Int] {
     return my_string.filter{$0.isNumber}.map{Int(String($0))!}.sorted(by: <)
 }
 
 func solution(_ my_string:String) -> [Int] {
     return my_string.filter {
         $0.isNumber
     }.compactMap {
         Int(String($0))
     }.sorted()
 }
 */
