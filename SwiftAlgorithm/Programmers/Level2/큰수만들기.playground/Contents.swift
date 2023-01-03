import UIKit

func solution(_ number: String, _ k: Int) -> String {
  let array = Array(number) // String을 배열로 변환
  var startindex = 0 // 범위의 첫번째 index 저장
  var endindex = k // 범위의 마지막 index 저장
  var max = 0 // 최대 숫자 저장
  var answer = "" // 뽑은 숫자들을 저장할 변수
  
  for _ in  0..<number.count - k { // 뽑아야할 수 만큼 반복문 실행
    if startindex != endindex { // startindex와 endindex가 다른지 체크해준다
      max = 0 // max를 초기화해준다
      
      for i in startindex...endindex { // 해당 범위만큼 반복문을 돌려 가장 큰 수를 찾아준다
        guard let num = Int(String(array[i])) else { break }
        if num == 9 { // 만약 해당 수가 9인 경우 더이상 큰 수가 나올 수 없으므로 반복문을 종료해준다
          max = num // max와 startindex를 update해준다
          startindex = i + 1
          break
        } else if num > max { // max보다 클 경우 max와 startindex를 update해주고 반복문을 계속 진행해준다
          max = num
          startindex = i + 1
        }
      }
    } else { // startindex와 endindex가 같은 경우, 남은 숫자들과 뽑아야할 수가 같은 경우이므로 남은 수를 모두 answer에 추가해주고 반복문을 종료해준다
      for i in array[startindex...(array.count - 1)] {
        answer += String(i)
      }
      break
    }
    answer += String(max) // max를 answer에 추가해주고
    endindex += 1 // 뽑아야할 숫자가 줄어든 만큼 endindex를 update해준다
  }
  return answer
}
solution("1231234", 3)
//solution("1924", 2) //94
//solution("4177252841", 4)
//solution("93939", 3)


/*
 func solution(_ number:String, _ k:Int) -> String {
     var str = number
     var count = 0
     var i = str.startIndex

     // 1개의 숫자를 제거할 때 마다 가장 큰 숫자를 만들 수 있는 경우 판단하기.
     // 1개를 뺀다고 하면 결과의 자릿수는 동일하므로 맨 앞자리가 큰 수가 크다.

     // 맨 앞부터 현재 원소와 다음 원소를 비교해서 현재 원소가 작으면 지우기
     // 아니면 다음 원소로 넘어가기
     while count < k { // k번 반복
         let next = str.index(after: i)

         if next >= str.endIndex {
             str.removeLast()
             i = str.startIndex
             count += 1
             continue
         } else if str[i] == "9" {
             i = next
             continue
         }

         if str[i] < str[next] { // 현재와 다음 원소비교해서 현재원소가 작으면
             str.remove(at: i)
             i = str.startIndex // 인덱스 초기화해서 다시 처음부터 검사
             count += 1
         } else {
             // 아니면 다음 인덱스로 넘어감
             i = next
         }
     }

     return str
 }
 */

/*
 func solution(_ number:String, _ k:Int) -> String {
     var a = number.map{ Int(String($0))! }
     var arr = [Int]()
     arr.append(a[0])
     a.removeFirst()
     var count = 0
     var eq = 0
     
     for i in a {
         if count >= k {
             arr.append(i)
         } else {
             if i > arr.last ?? 0 {
                 arr.removeLast()
                 arr.append(i)
                 count += 1
             } else if i < arr.last ?? 0 {
                 if eq != 0 {
                     if i > eq {
                         arr.append(i)
                     } else {
                         eq = i
                         count += 1
                     }
                 } else {
                     eq = i
                     count += 1
                 }

                 
             } else {
                 arr.append(i)
             }
         }
     }
     
     let res = arr.map { String($0) }
     return res.joined(separator: "")
 }
 */

/*
 for i in 0..<a.count {
     if count >= k {
         arr.append(a[i])
     } else {
         if a[i] > arr.last ?? 0 {
             arr.removeLast()
             arr.append(a[i])
             count += 1
         } else if a[i] < arr.last ?? 0 {
             if i == a.count {
                 arr.append
             }
             
             print(a[i])
             count += 1
         } else {
             arr.append(a[i])
         }
     }
 }
 */


/* 다음 값을 비교할 수 없어 count식으로 가야할거같은데...
 for i in a {
     if count >= k {
         arr.append(i)
     } else {

         if i > arr.last ?? 0 {
             arr.removeLast()
             arr.append(i)
             count += 1
         } else if i < arr.last ?? 0 {
             print(i)
             count += 1
         } else {
             arr.append(i)
         }
     }
 }
 */

/*
 음...
 func solution(_ number:String, _ k:Int) -> String {
     var numbers = number.map { Int(String($0))! }
     var arr = [Int]()
     arr.append(numbers[0])
     numbers.removeFirst()
     
     var count = k
     var befo = 0
     
     for i in numbers {
         if count <= 0 {
             arr.append(i)
         } else if arr.count > numbers.count - k {
             break
         } else {
             print(arr.last)
             if arr.last! < i {
                 arr.removeLast()
                 arr.append(i)
                 count -= 1
             } else if arr.last! > i {
                 if befo == 0 {
                     befo = i
                     count -= 1
                 } else if befo < i {
                     arr.append(i)
                 } else {
                     count -= 1
                 }
             } else {
                 arr.append(i)
             }
         }
     }
     
     print(arr)
     let res = arr.map { String($0) }
     return res.joined(separator: "")
 }
 */
