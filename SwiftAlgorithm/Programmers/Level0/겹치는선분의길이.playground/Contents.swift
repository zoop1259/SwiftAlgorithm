import Foundation

func solution(_ lines:[[Int]]) -> Int {
var a = [Int]()
var b = [Int]()
var c = [Int]()

var ab = [Int]()
var bc = [Int]()
var ac = [Int]()

for i in lines[0][0]...lines[0][1] {
    a.append(i)
}

for i in lines[1][0]...lines[1][1] {
    b.append(i)
}

for i in lines[2][0]...lines[2][1] {
    c.append(i)
}

for j in a {
    if b.contains(j) {
        ab.append(j)
    }
}
for j in b {
    if c.contains(j) {
        bc.append(j)
    }
}
for j in a {
    if c.contains(j) {
        ac.append(j)
    }
}

print(a,b,c)
print(ab)
print(bc)
print(ac)

var arr = [Int]()

if ab.count >= 2 {
    for i in ab {
        if arr.contains(i) == false {
            arr.append(i)
        }
    }
}
if bc.count >= 2 {
    for i in bc {
        if arr.contains(i) == false {
            arr.append(i)
        }
    }
}
if ac.count >= 2 {
    for i in ac {
        if arr.contains(i) == false {
            arr.append(i)
        }
    }
}

arr.sort()
print(arr)
    
var count = 0
var sand = 0
    //print(Set(ab).intersection(Set(bc)))
//비어있지 않고 겹치는게 없다면 -1
if ab.isEmpty == false {
    if Set(ab).intersection(Set(bc)).count == 0 || Set(ab).intersection(Set(ac)).count == 0 {
        sand -= 1
    }
}
if bc.isEmpty == false {
    if Set(bc).intersection(Set(ab)).count == 0 || Set(bc).intersection(Set(ac)).count == 0 {
        sand -= 1
    }
}
if ac.isEmpty == false {
    if Set(ac).intersection(Set(bc)).count == 0 || Set(ac).intersection(Set(ab)).count == 0 {
        sand -= 1
    }
}

if sand == 0 {
    sand = -1
}

    return arr.count + sand <= 0 ? 0 : arr.count + sand
}
//2 4 7

/*
 import UIKit
 
 //let lines = [[1,2],[2,3],[1,4]]
 //let lines = [[0, 2], [-3, -1], [-2, 1]] //이거만 해결한다면...
 //let lines = [[0, 2], [-3, -1], [-3, 2]]
 
 let lines = [[0, 1], [2, 5], [3, 9]]
 //let lines = [[-1, 1], [1, 3], [3, 9]]
 //let lines = [[0, 5], [3, 9], [1, 10]]
 //let lines = [[1,3],[2,4],[2,5]]
 //let lines = [[-3,0],[-1,1],[-4,-2]]
 
 var a = [Int]()
 var b = [Int]()
 var c = [Int]()
 
 var ab = [Int]()
 var bc = [Int]()
 var ac = [Int]()
 
 for i in lines[0][0]...lines[0][1] {
 a.append(i)
 }
 
 for i in lines[1][0]...lines[1][1] {
 b.append(i)
 }
 
 for i in lines[2][0]...lines[2][1] {
 c.append(i)
 }
 
 for j in a {
 if b.contains(j) {
 ab.append(j)
 }
 }
 for j in b {
 if c.contains(j) {
 bc.append(j)
 }
 }
 for j in a {
 if c.contains(j) {
 ac.append(j)
 }
 }
 
 print(a,b,c)
 print(ab)
 print(bc)
 print(ac)
 
 var arr = [Int]()
 
 if ab.count >= 2 {
 for i in ab {
 if arr.contains(i) == false {
 arr.append(i)
 }
 }
 }
 if bc.count >= 2 {
 for i in bc {
 if arr.contains(i) == false {
 arr.append(i)
 }
 }
 }
 if ac.count >= 2 {
 for i in ac {
 if arr.contains(i) == false {
 arr.append(i)
 }
 }
 }
 
 arr.sort()
 print(arr)
 
 
 // 이건 12
 //       34 가 3이나와서 안됨.
 //이렇게 겹치는게 없으면 -1 을 더 해줘야한다.
 var count = 0
 var sand = 0
 
 if ab.contains(ac) || ab.contains(bc) {
 print("겹치는데?")
 }
 if bc.contains(ab) || bc.contains(ac) {
 print("bc겹치는데?")
 }
 if ac.contains(ab) || ac.contains(bc) {
 print("ac겹치는데?")
 }
 
 //print(Set(ab).intersection(Set(bc)))
 //비어있지 않고 겹치는게 없다면 -1
 if ab.isEmpty == false {
 if Set(ab).intersection(Set(bc)).count == 0 || Set(ab).intersection(Set(ac)).count == 0 {
 sand -= 1
 }
 }
 if bc.isEmpty == false {
 if Set(bc).intersection(Set(ab)).count == 0 || Set(bc).intersection(Set(ac)).count == 0 {
 sand -= 1
 }
 }
 if ac.isEmpty == false {
 if Set(ac).intersection(Set(bc)).count == 0 || Set(ac).intersection(Set(ab)).count == 0 {
 sand -= 1
 }
 }
 
 if sand == 0 {
 sand = -1
 }
 
 print(arr.count + sand <= 0 ? 0 : arr.count + sand)
 
 
 
 /* 이건 [1,2] [3,4]가 3이 나온다. 안된다.
  if arr.count >= 1 {
  for i in 0..<arr.count - 1 {
  if arr[i].distance(to: arr[i + 1]) > 1 {
  count -= 1
  } else {
  count += 1
  }
  }
  }
  print(count)
  */
 
 
 /*
  
  var count12 = 0
  var count23 = 0
  var count13 = 0
  
  //123
  //   456
  for i in 0..<ab.count {
  if bc.contains(ab[i]) {
  count12 += 1
  }
  }
  
  //456
  //   789
  for i in 0..<bc.count {
  if ac.contains(bc[i]) {
  count23 += 1
  }
  }
  //123
  //       789
  for i in 0..<ac.count {
  if ab.contains(ac[i]) {
  count13 += 1
  }
  }
  
  print(count12, count13, count23)
  print(arr.count)
  [[1,3],[2,4],[3,5]] 질문입니다.
  123
  234
  345
  
  //12 34는 2다 1234로 3이 아님.
  //if bc.max()! <= ac.max()! {
  //    print("bc가 더 큼")
  //}
  
  //이게 포함되어있으면... 연결해서 값을 뿌리고.. 아니면 취소해야하는데.. 이걸 3개를 어떻게 연결해서 할 것인가에 대한..
  //print(bc[bc.count - 1])
  //
  //if ab.count >= 2 && bc.count >= 2 {
  //    if ab[ab.count - 1] <= bc[ab.count - 1] {
  //        bc.contains(ab[ab.count - 1])
  //    }
  //}
  
  
  
  //3,4,5
  //1,2,3,4,5
  //3,4,5,6,7,8,9
  
  //3+5+7
  //15
  
  
  //8이 나오려면 7을 뺴야하네... 1,2,3,4,5,6,7,8,9
  
  //겹치는게 있는경우
  
  
  
  
  //var asd = [Int]()
  //
  //for i in 0..<asd.count {
  //    print("빈값인 경우에도 에러발생은 안하네")
  //}
  //for i in asd {
  //    print(i)
  //}
  
  ///겹치는게 있는 경우
  //123
  // 234
  //총 숫자는 6개 겹치는건 2개 6 -2 = 4
  //거기에 1을 빼면 3이니까 됨.
  
  //123
  //  345
  //총 개수 6개 겹치는건 1개 6-1=5
  //선은 2+2 해서 4여야함.
  //그러면 12345에서 -1 ?
  
  //1234
  //   4567
  //총개수 8개 겹치는거 1개 8-1 = 7
  //선은 3+3 = 6
  //그럼 -1?
  
  /// 겹치는게 없는 경우
  //12
  //  34 인경우
  //총개수 4개 겹치는게 없음 그럼 4
  //1 + 1 = 2 여야함
  
  //123
  //   456 인경우
  //총개수 6개 겹치는게 없어 6
  //2 + 2 = 4 여야함.
  
  //1234
  //    5678 인경우
  //총개수 8개 겹치는게 없어 8
  //3 + 3 = 6
  
  /// 세가지를 따져보자
  
  //12
  //  34
  //    56
  // 답은 1+1+1 = 3이여야함.
  //안겹친수만큼 뺴줘야하나.... -3이니까 .. 6에서 3을 뺴면 3
  
  //123
  //   456
  //      789
  //답은 2+2+2 = 6
  // 9 - 3 = 6
  
  //1234
  //    567
  //       89
  //3+2+1 = 6
  
  123
  345
  67
  2+2+1
  이건 총개수 7이지만 안겹친라인 bc두라인 -2 해서 5
  
  123
  456
  78
  2+2+1 = 총개수8이지만 안겹친라인만큼 -3 해서 5
  
  
  
  
  ///123
  ///  345
  ///    567
  //총개수 9 겹치는거 2개 9-2=7
  //2+2+2 = 6이여야함.
  
  //해보니 겹치는게있으면 -1
  //없으면 -2 인듯.
  
  //123
  //  345
  //   456
  //이 경우는 총개수 9 겹치는거 3개 9-3=6
  //2+2+2 = 6 - 1 = 5
  
  //1234
  //   4567
  //     6789
  
  //이 경우 생각해보자. 겹치는거 3개 12-3 = 9
  //3+3+3 = 9 - 1 = 8
  
  //12
  // 23456
  //     67
  //총 9 겹치는거 2개  9 - 2 = 7
  //1+4+1 = 6
  
  
  
  */
 */
