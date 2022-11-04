import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    //제한사항
    guard height >= 1 || height <= 200 else {return -9999}
    guard array.count >= 1 || array.count <= 200 else {return -9999}
    for i in array {
        guard i >= 1 || i <= 100 else {return -9999}
    }
    
    var newArr = array
    newArr.append(height)
    let sortArr = newArr.sorted(by: >)
    
    if let height = sortArr.firstIndex(of: height) {
        print(height)
        if height == 0 {
            return 0
        } else {
            return height
        }
    }
    
    return -9999
}

solution([180,120,140], 190)

/*

 func solution(_ array: [Int], _ height: Int) -> Int { array.filter { $0 > height }.count }
 
 func solution(_ array:[Int], _ height:Int) -> Int {
     var result = 0
     for h in array where h > height {
         result += 1
     }
     return result
 }
 
 
 */
