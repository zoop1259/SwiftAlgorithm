import Foundation

/*
 대표 유형: 경로탐색, 네트워크, 조합 만들기 등등.
 DFS 구현 방법: 재귀함수
 BFS 구현 방법: 큐 / 연결리스트
 
 
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

var visited = [Bool](repeating: false, count: 9)
dfs(v: 8)


