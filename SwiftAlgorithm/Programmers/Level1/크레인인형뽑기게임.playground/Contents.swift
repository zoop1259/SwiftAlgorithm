import UIKit

//제출한 답
func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var crain = board
    var arr = [Int]()
    var count = 0

    for i in moves {
        for j in 0..<crain.count {
            ret :if crain[j][i-1] == 0 {
            } else {
                if crain[j][i-1] == arr.last {
                    arr.removeLast()
                    count += 2
                } else {
                    arr.append(crain[j][i-1])
                }
                crain[j][i-1] = 0
                break
            }
        }
    }
    return count
}

//let a = [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]
//print(a.count) //5

func solution2(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var crain = board
    
    let a = board[0][0]
    let b = board[3][0]
    var arr = [Int]()
    var count = 0
    /*
     for i in ingredient {
         
         stack.append(i)
         
         if stack.count < 4 { continue }
         
         let n = stack.count
         if Array(stack[n-4..<n]) == [1, 2, 3, 1] {
             stack.removeLast(4)
             count += 1
         }
         
     }
     */
    
    for i in moves {
        // i와 i-1이 같으면 제거해줘야한다. count 는 2 증가.
        print("뽑을곳 : ",i-1)
        //0이아니고 값을찾았으면 break를 걸자 for문 사용.
        for j in 0..<crain.count {
            print("내려가고있다: ",crain[j][i-1])
            ret :if crain[j][i-1] == 0 {
                print("이 위치엔 없네 더 내려가자. ", crain[j][i-1])
            } else {
                print(crain[j][i-1])
                
                
                if crain[j][i-1] == arr.last {
                    arr.removeLast()
                    count += 2
                } else {
                    arr.append(crain[j][i-1])
                }
                 
                crain[j][i-1] = 0
                break
            }
            
        }
    }
    
    print(arr)
    return count
}

solution([[0,0,0,0,0], //[0,0] = 0
          [0,0,1,0,3], //[3,0] = 4
          [0,2,5,0,1],
          [4,2,4,4,2],
          [3,5,1,3,1]], [1,5,3,5,1,2,1,4])  //4 3 1 1 3 2 4
//4빼고 3빼고 1빼고 1빼고 (1두개 없어지고 count를 2 증가시키고) 3빼고(이전에있던 3때문에 없어지고 count를 2 증가시킨다. ) 2빼고 (1)에 없어서 못빼고, 4빼고

