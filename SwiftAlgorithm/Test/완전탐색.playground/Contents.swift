import UIKit

//비효율적인 탐색 알고리즘. 시간의 제약이 없다면 그냥 쓸 알고리즘.
//Brute Force
func search(_ array: [Int], num: Int) -> Bool {
    for element in array {
        if num == element {
            return true
        }
    }
    return false
}

search([1,2,3,4], num: 5)
