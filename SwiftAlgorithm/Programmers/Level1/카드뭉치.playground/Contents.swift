import UIKit


func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1 = cards1
    var cards2 = cards2
    var same = [String]()
    
    for i in goal {
        
        if !cards1.isEmpty {
            if i == cards1[0] {
                same.append(i)
                cards1.removeFirst()
            }
        }
        
        if !cards2.isEmpty {
            if i == cards2[0] {
                same.append(i)
                cards2.removeFirst()
            }
        }
    }
    
    print(same)
    
    if same == goal {
        return "Yes"
    }
    
    return "No"
}

solution(["i", "drink", "water"]    , ["want", "to"]    , ["i", "want", "to", "drink", "water"]    )
solution(["i", "water", "drink"]    , ["want", "to"]    , ["i", "want", "to", "drink", "water"]    )
