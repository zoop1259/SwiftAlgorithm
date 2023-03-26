import UIKit

func generateCombinations(_ elements: String) -> [String] {
    var elements = elements.map { String($0) }
    var combinations: [String] = []
    
    // 모든 가능한 조합 생성
    func generate(_ prefix: String, _ remaining: [String]) {
        if !prefix.isEmpty {
            // prefix가 비어 있지 않으면 결과에 추가
            if !combinations.contains(prefix) {
                combinations.append(prefix)
            }
        }
        
        for i in 0..<remaining.count {
            let newPrefix = prefix.isEmpty ? remaining[i] : prefix + remaining[i]
            let newRemaining = remaining[0..<i] + remaining[i+1..<remaining.count]
            generate(newPrefix, Array(newRemaining))
        
        }
    }
    
    generate("", elements)
    
    
    
    return combinations
}



generateCombinations("011")
