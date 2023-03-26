import UIKit

//전역변수를 사용하는 sol1
var numbersCopy = [Int]()
var targetCopy = 0
var count = 0
 
func dfs(_ depth: Int, _ sum: Int) {
  //print("depth: \(depth), sum: \(sum), count: \(count)")

    if depth == numbersCopy.count {
        if sum == targetCopy {
            count += 1
        }
        return
    }
  print("depth: \(depth), sum: \(sum), count: \(count)")
    dfs(depth + 1, sum + numbersCopy[depth]) //먼저 +가 쭉 진행됨. 5까지.
    dfs(depth + 1, sum - numbersCopy[depth])
  print("계산후depth: \(depth), sum: \(sum), count: \(count)")
 
  
  
}

func solution(_ numbers:[Int], _ target:Int) -> Int {
    numbersCopy = numbers
    targetCopy = target
    dfs(0, 0)
    return count
}


solution([1, 1, 1, 1, 1], 3)
//solution([4, 1, 2, 1]    , 4)

/*
 depth: 0, sum: 0, count: 0
 depth: 1, sum: 1, count: 0
 depth: 2, sum: 2, count: 0
 depth: 3, sum: 3, count: 0
 depth: 4, sum: 4, count: 0
 계산후depth: 4, sum: 4, count: 1
 depth: 4, sum: 2, count: 1
 계산후depth: 4, sum: 2, count: 2
 계산후depth: 3, sum: 3, count: 2
 depth: 3, sum: 1, count: 2
 depth: 4, sum: 2, count: 2
 계산후depth: 4, sum: 2, count: 3
 depth: 4, sum: 0, count: 3
 계산후depth: 4, sum: 0, count: 3
 계산후depth: 3, sum: 1, count: 3
 계산후depth: 2, sum: 2, count: 3
 depth: 2, sum: 0, count: 3
 depth: 3, sum: 1, count: 3
 depth: 4, sum: 2, count: 3
 계산후depth: 4, sum: 2, count: 4
 depth: 4, sum: 0, count: 4
 계산후depth: 4, sum: 0, count: 4
 계산후depth: 3, sum: 1, count: 4
 depth: 3, sum: -1, count: 4
 depth: 4, sum: 0, count: 4
 계산후depth: 4, sum: 0, count: 4
 depth: 4, sum: -2, count: 4
 계산후depth: 4, sum: -2, count: 4
 계산후depth: 3, sum: -1, count: 4
 계산후depth: 2, sum: 0, count: 4
 계산후depth: 1, sum: 1, count: 4
 depth: 1, sum: -1, count: 4
 depth: 2, sum: 0, count: 4
 depth: 3, sum: 1, count: 4
 depth: 4, sum: 2, count: 4
 계산후depth: 4, sum: 2, count: 5
 depth: 4, sum: 0, count: 5
 계산후depth: 4, sum: 0, count: 5
 계산후depth: 3, sum: 1, count: 5
 depth: 3, sum: -1, count: 5
 depth: 4, sum: 0, count: 5
 계산후depth: 4, sum: 0, count: 5
 depth: 4, sum: -2, count: 5
 계산후depth: 4, sum: -2, count: 5
 계산후depth: 3, sum: -1, count: 5
 계산후depth: 2, sum: 0, count: 5
 depth: 2, sum: -2, count: 5
 depth: 3, sum: -1, count: 5
 depth: 4, sum: 0, count: 5
 계산후depth: 4, sum: 0, count: 5
 depth: 4, sum: -2, count: 5
 계산후depth: 4, sum: -2, count: 5
 계산후depth: 3, sum: -1, count: 5
 depth: 3, sum: -3, count: 5
 depth: 4, sum: -2, count: 5
 계산후depth: 4, sum: -2, count: 5
 depth: 4, sum: -4, count: 5
 계산후depth: 4, sum: -4, count: 5
 계산후depth: 3, sum: -3, count: 5
 계산후depth: 2, sum: -2, count: 5
 계산후depth: 1, sum: -1, count: 5
 계산후depth: 0, sum: 0, count: 5
 */


//매개변수를 사용하는 sol2가 메모리 사용측면에서 더 유리하다.
func solution2(_ numbers:[Int], _ target:Int) -> Int {
  var count = 0
  
  func DFS(index: Int, sum: Int) {
    if index == (numbers.count - 1) && sum == target { // 마지막 인덱스까지 모두 계산한 값이 target과 같다면
      count += 1 // count를 +1해주고
      return // 더 이상 계산할 값이 없으므로(자식노드가 없으므로) return 해준다
    }

    guard index + 1 < numbers.count else { return }
    
    DFS(index: index+1, sum: sum + numbers[index + 1]) // +자식 노드 실행
    DFS(index: index+1, sum: sum - numbers[index + 1]) // -자식 노드 실행
  }
  
  DFS(index: -1, sum: 0)
  
  return count
}

solution2([1, 1, 1, 1, 1], 3)

/*
 Swift에서의 함수 호출은 호출 스택에 쌓이는 방식으로 이루어집니다. 각 함수가 호출될 때마다 해당 함수의 지역 변수와 매개 변수는 호출 스택 내의 메모리에 저장됩니다. 호출 스택에서 함수 호출이 완료되면, 해당 함수의 지역 변수와 매개 변수는 호출 스택에서 제거됩니다.

 따라서 이 코드에서는 각 재귀 호출마다 지역 변수 count와 매개 변수 index, sum이 호출 스택 내에서 생성되고, 호출 스택에서 함수 호출이 완료되면 해당 변수들이 호출 스택에서 제거됩니다.

 즉, 이 코드에서 배열이 생성되는 것은 아니며, 호출 스택 내에서 각 함수 호출에 필요한 변수들이 생성되고, 호출 스택에서 함수 호출이 완료되면 해당 변수들이 제거됩니다.
 
 DFS(index: -1, sum: 0)
 ├── DFS(index: 0, sum: 1)
 |   ├── DFS(index: 1, sum: 2)
 |   |   ├── DFS(index: 2, sum: 3)
 |   |   |   ├── DFS(index: 3, sum: 4)
 |   |   |   |   ├── DFS(index: 4, sum: 5) -> count += 1
 |   |   |   |   └── DFS(index: 4, sum: 3)
 |   |   |   └── DFS(index: 3, sum: 2)
 |   |   |       ├── DFS(index: 4, sum: 3)
 |   |   |       └── DFS(index: 4, sum: 1)
 |   |   ├── DFS(index: 2, sum: 1)
 |   |   |   ├── DFS(index: 3, sum: 2)
 |   |   |   |   ├── DFS(index: 4, sum: 3)
 |   |   |   |   └── DFS(index: 4, sum: 1)
 |   |   |   └── DFS(index: 3, sum: 0)
 |   |   |       ├── DFS(index: 4, sum: 1)
 |   |   |       └── DFS(index: 4, sum: -1)
 |   |   └── DFS(index: 1, sum: 0)
 |   |       ├── DFS(index: 2, sum: 1)
 |   |       |   ├── DFS(index: 3, sum: 2)
 |   |       |   |   ├── DFS(index: 4, sum: 3)
 |   |       |   |   └── DFS(index: 4, sum: 1)
 |   |       |   └── DFS(index: 3, sum: 0)
 |   |       |       ├── DFS(index: 4, sum: 1)
 |   |       |       └── DFS(index: 4, sum: -1)
 |   |       └── DFS(index: 2, sum: -1)
 |   |           ├── DFS(index: 3, sum: 0)
 |   |           |   ├── DFS(index: 4, sum: 1)
 |   |           |   └── DFS(index: 4, sum: -1)
 |   |           └── DFS(index: 3, sum: -2)
 |   |               ├── DFS(index: 4, sum: -1)
 |   |               └── DFS(index: 4, sum: -3)
 |   └── DFS(index: 0, sum: -1)
 |       ├── DFS(index: 1, sum: 0)
 |       |   ├── DFS(index: 2, sum: 1)
 |       |   |   ├── DFS(index: 3, sum: 2)
 |       |   |   |   ├── DFS(index: 4, sum: 3)
 |       |   |   |   └── DFS(index: 4, sum: 1)
 |       |   |   └── DFS(index: 3, sum: 0)
 |   |   |   ├── DFS(index: 4, sum: 1)
 |   |   |   └── DFS(index: 4, sum: -1)
 | | └── DFS(index: 2, sum: -1) //맞춰야하는데...
 | | ├── DFS(index: 3, sum: 0)
 | | | ├── DFS(index: 4, sum: 1)
 | | | └── DFS(index: 4, sum: -1)
 | | └── DFS(index: 3, sum: -2)
 | | ├── DFS(index: 4, sum: -1)
 | | └── DFS(index: 4, sum: -3)
 | └── DFS(index: 1, sum: -2)
 | ├── DFS(index: 2, sum: -1)
 | | ├── DFS(index: 3, sum: 0)
 | | | ├── DFS(index: 4, sum: 1)
 | | | └── DFS(index: 4, sum: -1)
 | | └── DFS(index: 3, sum: -2)
 | | ├── DFS(index: 4, sum: -1)
 | | └── DFS(index: 4, sum: -3)
 | └── DFS(index: 2, sum: -3)
 | ├── DFS(index: 3, sum: -2)
 | | ├── DFS(index: 4, sum: -1)
 | | └── DFS(index: 4, sum: -3)
 | └── DFS(index: 3, sum: -4)
 | ├── DFS(index: 4, sum: -3)
 | └── DFS(index: 4, sum: -5)
 └── DFS(index: -1, sum: 0)
 
 DFS 호출이 발생할 때마다 매번 새로운 배열이 생성되고 각 호출이 종료되면 소멸됩니다.

 그리고 첫 번째 호출에서부터 2^1, 2^2, ..., 2^5까지 모든 호출이 발생합니다. 즉, 모든 호출이 발생한 이후에는 호출 스택에 2^5개의 호출 상태가 저장되어 있습니다. 하지만 각 호출의 상태는 해당 호출이 종료되면 제거되기 때문에, 동시에 메모리에 존재하는 호출 상태는 항상 한 개뿐입니다. 다시 말해, 동시에 메모리에 존재하는 호출 상태의 개수는 항상 1개 이상 2^5개 이하입니다.
 
 그래서 예를들면 [1] [-1] 에서 뻗어나가 [2 0] [0 - 2] 이런식으로 뻗어나간다는거지?
 맞습니다. 예를 들어 [1], [-1] 두 개의 숫자를 가진 배열이 있다고 하면, 이 배열에서는 두 번째 인덱스까지 모두 계산하면서 가능한 모든 경우의 수를 따져보게 됩니다.

 따라서 루트 노드에서 시작해서 첫 번째 인덱스 1을 선택한 경우와 -1을 선택한 경우 두 가지 경우를 모두 탐색하게 됩니다. 첫 번째 인덱스를 선택한 경우에는 다음 자식 노드로 2와 0을 선택하게 되고, -1을 선택한 경우에는 다음 자식 노드로 0과 -2를 선택하게 됩니다. 따라서 가능한 모든 경우의 수를 탐색하면서 계산을 진행하고, 최종적으로 타겟 숫자와 일치하는 경우의 수를 구하게 됩니다.
 */
