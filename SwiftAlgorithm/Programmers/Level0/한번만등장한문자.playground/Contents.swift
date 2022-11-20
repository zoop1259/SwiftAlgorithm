import UIKit

let a = "aaabbc"
let arr1 = a.map{ String($0) }
var arr = a.map{ String($0) }
//print(arr)
var res = [String]()
for i in arr {
    if res.contains(i) == false {
        res.append(i)
    }
}
for i in res {
    if let i = arr.firstIndex(of: i) {
        arr.remove(at: i)
    }
}

var fin = [String]()
for i in arr1 {
    if arr.contains(i) == false {
        fin.append(i)
    }
}
print(fin)
//print(res)

//for i in res {
//    arr.removeAll(where: i)
//
//    print(arr)
//}

//for i in arr {
//
//    if arrayOfString.contains("c") {
//       let index = arrayOfString.firstIndex(of: "c")
//       arrayOfString.remove(at: index!)
//       print(arrayOfString)
//    }
//}

//let replaced = myString.replacingOccurrences(of: "bbbb", with: "") // "aaaaaaaa"
