import UIKit

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    
    var count = skill_trees.count
    for i in skill_trees {
        var arr = skill.map{ String($0) }
        
        for j in i {
            if arr.contains(String(j)) {
                if arr.first == String(j) {
                    arr.removeFirst()
                } else {
                    count -= 1
                    break
                }
            }
        }
    }
    return count
}

solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"]    )
