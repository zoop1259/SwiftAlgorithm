import UIKit

//let a = [1,10]
//let b = [3,5]
//
//find: for i in a[0]...a[1] {
//  for j in b[0]...b[1] {
//    if j == i {
//      print("겹침" , j)
//      break find
//    }
//  }
//}


//퇴실시간 + 10분
//겹치는방개수 return

/*
func solution(_ book_time:[[String]]) -> Int {
  
  var arr = [[Int]]()
  var res = 0
  var count = 0
  for i in book_time {
    let en = i[0].split(separator: ":")
    let enTime = Int(String(en[0]))! * 60 + Int(String(en[1]))! + 10
    let out = i[1].split(separator: ":")
    let outTime = Int(String(out[0]))! * 60 + Int(String(out[1]))! + 10
    arr.append([enTime, outTime])
  }
  for _ in 0..<arr.count {
    count = 0
    for i in arr {
      for j in arr {
        let irange = i[0]...i[1]
        let jrange = j[0]...j[1]
        
        if irange.overlaps(jrange) {
          count += 1
        } else {
          count = 0
        }
        
      }
    }
    if res <= count {
      res = count
    }
  }

  print(res)
  print(arr)
  
  return 0
}


func solution(_ book_time:[[String]]) -> Int {
  
  var arr = [[Int]]()
  var res = 0
  var count = 0
  for i in book_time {
    let en = i[0].split(separator: ":")
    let enTime = Int(String(en[0]))! * 60 + Int(String(en[1]))! + 10
    let out = i[1].split(separator: ":")
    let outTime = Int(String(out[0]))! * 60 + Int(String(out[1]))! + 10
    arr.append([enTime, outTime])
  }

  for _ in 0..<arr.count {
    count = 0
    for i in arr {
      
      for j in arr {
        let a = i[0]...i[1]
        
        if a.contains(j[0]) || a.contains(j[1]) {
          count += 1
          break
        }


      }
    }
    if res <= count {
      res = count
    }
  }
  
  print(arr)
  print(res)
  
  return res
}
*/

/*
func calcTime(_ time: String) -> Int {
  let components = time.split(separator: ":").map { Int($0)! }
  return components[0] * 60 + components[1]
}
 
 func solution(_ book_time: [[String]]) -> Int {
   var map = [Int: Int]()

   for time in book_time {
     let startTime = time[0]
     let endTime = time[1]
     var st = calcTime(startTime)
     let et = calcTime(endTime)
     while st < et + 10 {
       map[st, default: 0] += 1
       st += 1
     }
   }

   print(map)
   return map.values.max() ?? 0
 }
*/

func solution(_ book_time: [[String]]) -> Int {
  var map = [Int: Int]()

  for time in book_time {
    let startTime = time[0]
    let endTime = time[1]
    let stSplit = startTime.split(separator: ":").map { Int($0)! }
    let etSplit = endTime.split(separator: ":").map { Int($0)! }
    var st = stSplit[0] * 60 + stSplit[1]
    let et = etSplit[0] * 60 + etSplit[1]
    //모든 분을 딕셔너리로 만들어서 값을 넣어주고. 겹칠수록 +1이 될테니
    while st < et + 10 {
      map[st, default: 0] += 1
      st += 1
    }
  }

  print(map)
  //맥스값을 뽑아온다.
  return map.values.max() ?? 0
}
 
solution([["15:00", "17:00"], ["16:40", "18:20"], ["14:20", "15:20"], ["14:10", "19:20"], ["18:20", "21:20"]]  )
solution([["09:10", "10:10"], ["10:20", "12:20"]]  )
solution([["10:20", "12:30"], ["10:20", "12:30"], ["10:20", "12:30"]]  )
