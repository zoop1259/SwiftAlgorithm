import Foundation

/*
 대표 유형: 경로탐색, 네트워크, 조합 만들기 등등.
 DFS 구현 방법: 재귀함수
 BFS 구현 방법: 큐 / 연결리스트
 
 0번째 인덱스의 값은 비워두는것이 일반적이나 C 또는 C++에서는 사용한다고 한다.
 Swift에선 값을 넣어도 제대로 동작은 하지만 일관성있는 코드작성과 타인이 코드를 이해하는것을 돕기위해 비워둔다고 한다.
 
 */


func dfs(v: Int){
    
    visited[v] = true
    print(v, terminator: " ")
    for i in graph[v] {
        if !visited[i] {
            print(visited)
            dfs(v: i)
        }
    }
}

let graph = [
    [],
    [2,3,8],
    [1,7],
    [1,4,5],
    [3,5],
    [3,4],
    [7],
    [2,6,8],
    [1,7]
]

var visited = [Bool](repeating: false, count: graph.count)
dfs(v: 1)
//dfs(v: 8)
/*
 visited: [false, false, false, false, false, false, false, false, false]
 dfs(8) -> visited[8] = true
         -> print(8) -> 8
         
         -> for i in graph[8]: 2, 6, 8
             -> if not visited[2]: true
                 -> visited[2] = true
                 -> print(2) -> 8 2
                 -> for i in graph[2]: 1, 7
                     -> if not visited[1]: true
                         -> visited[1] = true
                         -> print(1) -> 8 2 1
                         -> for i in graph[1]: 2, 3, 8
                             -> if not visited[2]: false
                             -> if not visited[3]: true
                                 -> visited[3] = true
                                 -> print(3) -> 8 2 1 3
                                 -> for i in graph[3]: 1, 4, 5
                                     -> if not visited[1]: false
                                     -> if not visited[4]: true
                                         -> visited[4] = true
                                         -> print(4) -> 8 2 1 3 4
                                         -> for i in graph[4]: 3, 5
                                             -> if not visited[3]: false
                                             -> if not visited[5]: true
                                                 -> visited[5] = true
                                                 -> print(5) -> 8 2 1 3 4 5
                                                 -> for i in graph[5]: 3, 4
                                                     -> if not visited[3]: false
                                                     -> if not visited[4]: false
                                             -> else: continue
                                     
                                     -> if not visited[5]: false
                                 -> else: continue
                             
                             -> if not visited[8]: false
                             -> if not visited[2]: false
                         -> else: continue
              
                     -> if not visited[7]: true
                         -> visited[7] = true
                         -> print(7) -> 8 2 1 3 4 5 7
                         -> for i in graph[7]: 2, 6
                             -> if not visited[2]: false
                             -> if not visited[6]: true
                                 -> visited[6] = true
                                 -> print(6) -> 8 2 1 3 4 5 7 6
                                 -> for i in graph[6]: 7
                                     -> if not visited[7]: false
                             -> else: continue
                     -> else: continue
             
             -> if not visited[6]: false
             -> if not visited[8]: false
         -> else: continue
 */

/*
 // 방문한 노드를 담을 배열
 var visited = [Bool]()

 // 그래프를 인접 리스트로 표현한 배열
 var graph = [[Int]]()

 // DFS 함수 정의
 func dfs(_ v: Int) {
     // 현재 노드를 방문했다는 표시
     visited[v] = true
     // 현재 노드 출력
     print(v, terminator: " ")
     // 현재 노드의 인접 노드들에 대해 DFS를 재귀 호출
     for next in graph[v] {
         if !visited[next] {
             dfs(next)
         }
     }
 }

 // 예시: 그래프 초기화 후 DFS 호출
 // 방문 여부를 나타내는 배열 초기화
 visited = [false, false, false, false, false, false, false, false]
 // 그래프 초기화
 graph = [
     [2, 3, 8],  // 1번 노드와 인접한 노드
     [1, 7],     // 2번 노드와 인접한 노드
     [1, 4, 5],  // 3번 노드와 인접한 노드
     [3, 5],     // 4번 노드와 인접한 노드
     [3, 4],     // 5번 노드와 인접한 노드
     [7],        // 6번 노드와 인접한 노드
     [2, 6, 8],  // 7번 노드와 인접한 노드
     [1, 7],     // 8번 노드와 인접한 노드
 ]
 // DFS 호출: 1번 노드에서 시작
 dfs(1) // 1 2 7 6 8 3 4 5


 */
