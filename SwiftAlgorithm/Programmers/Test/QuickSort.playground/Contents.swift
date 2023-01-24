import UIKit

//재귀를 이용하여 구현함.
//일반적으로 버블, 선택같은 정렬보다 빠르다는 장점이 있다.
//그러나 swift에서는 filter로 간단하게 구현할 수 있지만 for문으로 좀 더 타이트하게 한다면 조금 더 나은 시간복잡도로 구현 할 수 있음.
func quickSort(arr: [Int]) -> [Int] {
    guard let first = arr.first, arr.count > 1 else { return arr }
    
    let pivot = first
    let left = arr.filter { $0 < pivot }
    let right = arr.filter { $0 > pivot }
    
    return quickSort(arr: left) + [pivot] + quickSort(arr: right)
    
}

quickSort(arr: [1,3,4,2,5,11])
