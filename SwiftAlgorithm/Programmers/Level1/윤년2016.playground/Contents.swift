import UIKit

//let formatter = DateFormatter()
//formatter.dateFormat = "EE"
//
//let date = Date()
//let nowDateStr = formatter.string(from: date)
//let nowDate = formatter.date(from: nowDateStr)

//let date = DateFormatter()
//date.locale = Locale(identifier: "ko_kr")
////date.dateFormat = "yyyy-MM-dd"
//date.dateStyle = .full
//date.string(from: <#T##Date#>)

//let nowDate = Date() // 현재의 Date (ex: 2020-08-13 09:14:48 +0000)
//let dateFormatter = DateFormatter()
//dateFormatter.dateFormat = "EE" // 2020-08-13 16:30
//let str = dateFormatter.string(from: nowDate) // 현재 시간의 Date를 format에 맞춰 string으로 반환

//let dateStr = "2020-08-13" // Date 형태의 String
let a = String(5)
let b = String(24)
var dateStr = "2016-\(a)-\(b)"

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd"
//dateFormatter.dateFormat = "EE" //초기에 포맷할때는 이런식으로 하면 안된다.
let convertDate = dateFormatter.date(from: dateStr) // Date 타입으로 변환

let myDateFormatter = DateFormatter()
myDateFormatter.dateFormat = "EE" // Tue 이런식.
let convertStr = myDateFormatter.string(from: convertDate!)

//그냥 dateFormatter.string(from:date!).uppercased() 이렇게해도된다...

//바보같이 이렇게 했는데..
var dat = ""

switch convertStr {
case "Mon":
    dat = "MON"
case "Tue":
    dat = "TUE"
case "Wed":
    dat = "WED"
case "Thu":
    dat = "THU"
case "Fri":
    dat = "FRI"
case "Sat":
    dat = "SAT"
case "Sun":
    dat = "SUN"
default:
    print("날짜가 없")
}

print(dat)

//SUN,MON,TUE,WED,THU,FRI,SAT
