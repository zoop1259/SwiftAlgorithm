import UIKit

//비효율적인 탐색 알고리즘.
func search(_ array: [Int], num: Int) -> Bool {
    for element in array {
        if num == element {
            return true
        }
    }
    return false
}

search([1,2,3,4], num: 5)
