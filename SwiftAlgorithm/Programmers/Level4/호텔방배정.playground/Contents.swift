import UIKit

func solution(_ k:Int64, _ room_number:[Int64]) -> [Int64] {
    var result = [Int64]()
    var rooms = [Int64:Int64]()
    
    //유니온파인드 사용...
    func find(node: Int64) -> Int64 {
        guard let value = rooms[node] else {
            rooms[node] = node + 1
            return node
        }
        let room = find(node: value)
        rooms[node] = room + 1
        return room
    }
    
    for i in room_number {
        let room = find(node: i)
        result.append(room)
    }
    return result
}
solution(10, [1,3,4,1,3,1]    )

/*
 func solution(_ k:Int64, _ room_number:[Int64]) -> [Int64] {
     var occupiedRooms = Set<Int64>()
     var result = [Int64]()

     for request in room_number {
         var room = request
         while occupiedRooms.contains(room) {
             room += 1
         }
         occupiedRooms.insert(room)
         result.append(room)
     }

     return result
 }
 */

/* 아주 조금 개선됨.
 func solution(_ k:Int64, _ room_number:[Int64]) -> [Int64] {
     var arr = [Int64]()
     var arrEmpty = [Int64](1...k) //1부터 k개 생성.
     print(arrEmpty)
     
     var nums = 0
     
     for i in room_number {
         var a = i
         if arr.contains(i) == false {
             arr.append(i)
         } else {
             while arr.contains(a) == true { //값이 없는 방까지 while문을 돌려 a값을 추가
                 print(a)
                 a += 1
                 if arr.contains(a) == false { //빈방을 찾았으면 추가하고 빠져나옴.
                     arr.append(a)
                     break
                 }
             }
         }
     }
     return arr
 }
 
 */

/* 효율성 테스트 실패.
 func solution(_ k:Int64, _ room_number:[Int64]) -> [Int64] {
     var arr = [Int64]()
     for i in room_number {
         if arr.contains(i) == false { //배열에 값이 없으면 바로 배정
             arr.append(i)
         } else if arr.contains(i) == true { //배정이 되어있다면 우선 i에 1을 더한 변수를 생성
             var a = i + 1
             
             if arr.contains(a) == false { //그 값이 배열에 없다면 배정
                 arr.append(a)
             } else if arr.contains(a) == true { //만약 값이 있다면
                 while arr.contains(a) == true { //값이 없는 방까지 while문을 돌려 a값을 추가함
                     print(a)
                     a += 1
                     if arr.contains(a) == false { //빈방을 찾았으면 추가하고 빠져나옴.
                         arr.append(a)
                         break
                     }
                 }
             }
         }
     }
     return arr
 }
 */
