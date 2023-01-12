import UIKit

func solution(_ citations:[Int]) -> Int {
    let sortedCitations = citations.sorted(by: >)
    var hIndex = 0
    
    for (index, citation) in sortedCitations.enumerated() {
        if citation > index {
            hIndex += 1
        } else {
            break
        }
    }
    
    return hIndex
}

solution([3, 0, 6, 1, 5])
