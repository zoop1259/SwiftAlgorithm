import Foundation

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
