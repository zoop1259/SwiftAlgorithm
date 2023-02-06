import UIKit

/*
 전제조건
 1. 정렬되어있어야함. (안되어있으면 정렬하던지...)
 2. 둘로 나눠야함.
 
 */

//반복문으로 구현
func binarySearch<T: Comparable>(_ a: [T], key: T) -> Int? {
    var lowerBound = 0
    var upperBound = a.count
    while lowerBound < upperBound {
        let midIndex = lowerBound + (upperBound - lowerBound) / 2   //이진 검색을 구현할 때 많이들 midIndex = (lowerBound + upperBound) / 2 로 계산한다. 이는 사소한 버그를 일으킬 수 있는데, 배열의 크기가 엄청 커서 lowerBound + upperBound 가 정수의 최댓값을 넘어서는 오버플로우를 일으킬 때 발생한다. 이는 64비트 CPU 에서는 잘 일어나지 않지만, 32비트 환경에서는 분명히 일어날 수 있다.
        if a[midIndex] == key {
            return midIndex
        } else if a[midIndex] < key {
            lowerBound = midIndex + 1
        } else {
            upperBound = midIndex
        }
    }
    return nil
}

func binarySearch2(_ array: [Int], num: Int) -> Bool {
    var start = 0
    var end = (array.count - 1)
    
    while start <= end {
        let mid = (start + end) / 2 //
        if array[mid] == num { return true }
        if array[mid] > num {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return false
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

binarySearch(numbers, key: 43)  // gives 13
binarySearch2(numbers, num: 43)
