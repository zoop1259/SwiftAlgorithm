import UIKit

let a = [3,3,2,1,5]
let s = Set(a).sorted(by: >)

func solution(_ priorities:[Int], _ location:Int) -> Int {
  var arr = [Int](repeating: 0, count: priorities.count) //출력순서를 담을 배열
  var max = priorities.sorted(by: >)[0]
  var count = priorities.count - 1
  
  //맥스값을 기준으로 찾아가면서 하나씩 - 시키고 count가 0될때 빠져나올까?..흠....
  
  
  
    
    return 0
}
//예를들어  [2  3  0  1] 순서가 될것이다. 그러면 priorities[2] = 0 이겠지.
solution([2, 1, 3, 2], 2)


/*
 //var a = [1, 7, 9, 1, 1, 1]
 //var location = 2
 var a = [2,1,3,2]
 var location = 2

 //var resLocate = a[location]
 //var arr = [Int]()
 //
 //var b = a.sorted(by: <)
 //for i in 0..<a.count {
 //    let indexOfA = b.firstIndex(of: a[i])
 //    arr.append(indexOfA ?? i)
 //}
 //print(arr)
 
 //for i in 1...a.count {
 //    if let max = aa.max() {
 //        if aa[0] < max {
 //            aa.append(aa[0])
 //            aa.removeFirst()
 //            print(aa)
 //        } else {
 //            aa.removeFirst()
 //        }
 //    }
 //}
 //print(aa)

  //값으로 인덱스 구하기.
  if let index = a.firstIndex(of: 0) {
      print(index)
  }

  //sort를 이용하여 count늘려보기
 var count = 0

 a.sort { a, b in
     if a > b {
         count += 1
         return a > b
     }
     
     return a < b
 }

 print(a)

 */
