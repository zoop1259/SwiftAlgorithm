import Foundation

func solution(_ sides:[Int]) -> Int {
    var sortSides = sides.sorted(by: >)
    return sortSides[0] < sortSides[1] + sortSides[2] ? 1 : 2
}
