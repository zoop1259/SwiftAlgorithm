import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    guard num_list.count >= 1 , num_list.count <= 100 else { return [9999,-9999] }
    
    var hol = 0, zzak = 0
    for i in num_list {
        if i%2 == 0 {
            zzak += 1
        } else {
            hol += 1
        }
    }
    
    return [zzak,hol]
}
